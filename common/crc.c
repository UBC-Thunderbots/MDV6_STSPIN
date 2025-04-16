#include "crc.h"
#include <stddef.h>
#include <stdint.h>

uint8_t crc_gen_checksum(enum OPCODES opcode, uint16_t data) {
    uint8_t crc = 0xFF;

    crc = CRC_TABLE[crc ^ opcode];
    crc = CRC_TABLE[crc ^ ((uint8_t) (data >> 8))];
    crc = CRC_TABLE[crc ^ ((uint8_t) data & 0xFF)];

    return crc ^ 0xFF;
}
