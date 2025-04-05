#include <stdint.h>
#include "../common/types.h"
#include "stm32f0xx_hal.h"

struct RawMessage {
    enum OPCODES data[8];
    uint8_t counter;
};

enum OPCODES poll() {
    struct RawMessage msg = {0};
}
