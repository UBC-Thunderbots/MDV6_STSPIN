#include "crc.h"

const uint8_t crc_table[] = CRC_TABLE;

uint8_t CrcGenerateChecksum(const uint8_t *data, size_t len)
{
    uint8_t crc = 0xFF;

    for (size_t i = 0; i < len; i++) {
        crc = crc_table[crc ^ data[i]];
    }

    return crc ^ 0xFF;
}
