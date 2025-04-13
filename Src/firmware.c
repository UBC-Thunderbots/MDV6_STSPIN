#include <stdint.h>
#include "firmware.h"
#include "../common/types.h"
#include "stm32f0xx_hal_spi.h"

struct RawMessage {
    enum OPCODES data[8];
    uint8_t counter;
};

enum OPCODES poll(SPI_HandleTypeDef *hspi) {
    struct RawMessage msg = {0};
}
uint8_t SPITransmit(uint8_t tx) {

}
