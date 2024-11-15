#include <iostream>
#include <fstream>
#include <sys/socket.h>
#include <system_error>
#include <unistd.h>
#include <array>
#include <chrono>

#include "timerC.h"
#include "unreliableTransport.h"
#include "logging.h"
#include "datagram.h"

#define WINDOW_SIZE 10
#define TIMEOUT 1000  // Timeout duration in milliseconds

int main(int argc, char* argv[]) {
    // Defaults
    uint16_t portNum(12345);
    std::string hostname("isengard.mines.edu");
    std::string inputFilename("input.dat");

    int opt;
    try {
        while ((opt = getopt(argc, argv, "f:h:p:d:")) != -1) {
            switch (opt) {
                case 'p':
                    portNum = std::stoi(optarg);
                    break;
                case 'h':
                    hostname = optarg;
                    break;
                case 'd':
                    LOG_LEVEL = std::stoi(optarg);
                    break;
                case 'f':
                    inputFilename = optarg;
                    break;
                case '?':
                default:
                    std::cout << "Usage: " << argv[0] << " [-h hostname] [-p port] [-d debug_level] [-f filename]" << std::endl;
                    return 1;
            }
        }
    } catch (std::exception &e) {
        FATAL << "Invalid command line arguments: " << e.what() << ENDL;
        return 1;
    }

    TRACE << "Command line arguments parsed." << ENDL;
    TRACE << "\tServername: " << hostname << ENDL;
    TRACE << "\tPort number: " << portNum << ENDL;
    TRACE << "\tDebug Level: " << LOG_LEVEL << ENDL;
    TRACE << "\tInput file name: " << inputFilename << ENDL;

    // Open the input file
    std::ifstream inputFile(inputFilename, std::ios::binary);
    if (!inputFile.is_open()) {
        FATAL << "Failed to open input file: " << inputFilename << ENDL;
        return 1;
    }

    try {
        // Initialize unreliable transport connection
        unreliableTransportC connection(hostname, portNum);

        // Initialize the timer
        timerC timer(TIMEOUT);

        // Setup the Go-Back-N window
        std::array<datagramS, WINDOW_SIZE> sndpkt;
        uint16_t base = 0; // Oldest unacknowledged packet
        uint16_t nextseqnum = 0;
        bool allSent = false, allAcked = false;

        while (!allAcked) {
            // 1. Send packets if there's space in the window and data to send
            while (((nextseqnum - base + WINDOW_SIZE) % WINDOW_SIZE) < WINDOW_SIZE && !allSent) {
                datagramS packet{};
                inputFile.read(packet.data, MAX_PAYLOAD_LENGTH);
                packet.payloadLength = inputFile.gcount();
                packet.seqNum = nextseqnum % WINDOW_SIZE; // Use modulo for wrapping
                packet.checksum = computeChecksum(packet);

                // Send packet if there's data to send
                if (packet.payloadLength > 0) {
                    connection.udt_send(packet);
                    sndpkt[packet.seqNum] = packet; // Store packet using wrapped seqNum
                    nextseqnum++;
                    DEBUG << "Sent packet with seqNum: " << packet.seqNum << " (payload length: " << packet.payloadLength << ")" << ENDL;
                } else {
                    // Send final empty packet to signal end of transmission
                    packet.payloadLength = 0;
                    packet.seqNum = nextseqnum % WINDOW_SIZE;
                    packet.checksum = computeChecksum(packet);
                    connection.udt_send(packet);
                    sndpkt[packet.seqNum] = packet;
                    nextseqnum++;
                    DEBUG << "Sent final empty packet with seqNum: " << packet.seqNum << ENDL;
                    allSent = true;
                }

                // Start the timer if it's the first unacknowledged packet
                if (base == (nextseqnum - 1) % WINDOW_SIZE) {
                    timer.start();
                }
            }

            // 2. Check for ACKs from the server
            datagramS ackPacket{};
            ssize_t bytesReceived = connection.udt_receive(ackPacket);
            if (bytesReceived > 0) {
                // Validate checksum
                if (validateChecksum(ackPacket)) {
                    uint16_t ackNum = ackPacket.ackNum % WINDOW_SIZE; // Use modulo for wrapping
                    DEBUG << "Received ACK for seqNum: " << ackNum << ENDL;

                    // Slide the window if the ackNum is within range
                    if (((ackNum - base + WINDOW_SIZE) % WINDOW_SIZE) < WINDOW_SIZE) {
                        base = (ackNum + 1) % WINDOW_SIZE;
                        timer.start(); // Restart the timer for the new base
                    }

                    // If all data sent and acknowledged, we're done
                    if (allSent && base == (nextseqnum % WINDOW_SIZE)) {
                        allAcked = true;
                    }
                } else {
                    WARNING << "Received corrupted ACK packet." << ENDL;
                }
            }

            // 3. Check for timer expiration
            if (timer.timeout()) {
                DEBUG << "Timer expired. Resending packets from seqNum: " << base << ENDL;
                timer.start(); // Restart the timer

                // Resend all packets in the window
                for (uint16_t i = base; i != nextseqnum; i = (i + 1) % WINDOW_SIZE) {
                    connection.udt_send(sndpkt[i]);
                    DEBUG << "Resent packet with seqNum: " << sndpkt[i].seqNum << ENDL;
                }
            }
        }

        // Final step: Ensure the last ACK for the empty packet is received
        bool lastAckReceived = false;
        while (!lastAckReceived) {
            datagramS ackPacket{};
            ssize_t bytesReceived = connection.udt_receive(ackPacket);
            if (bytesReceived > 0 && validateChecksum(ackPacket)) {
                uint16_t ackNum = ackPacket.ackNum % WINDOW_SIZE;
                if (ackNum == (nextseqnum - 1) % WINDOW_SIZE) {
                    DEBUG << "Received final ACK for seqNum: " << ackNum << ENDL;
                    lastAckReceived = true;
                }
            } else {
                WARNING << "Failed to receive valid ACK for the final packet. Retrying..." << ENDL;
            }
        }

        // Close the input file
        inputFile.close();
        INFO << "File transfer completed successfully." << ENDL;

    } catch (std::exception &e) {
        FATAL << "Error: " << e.what() << ENDL;
        return 1;
    }
    return 0;
}
