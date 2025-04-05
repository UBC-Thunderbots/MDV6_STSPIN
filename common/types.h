#ifndef COMMON_TYPES
#define COMON_TYPES

enum OPCODES {
    MOV_AX = 0b10000000,
    GET_AX = 0b10000001,
    MOV_BX = 0b10010000,
    GET_BX = 0b10010001,
    SET_SPEEDRAMP = 0b10100000,
    GET_SPEED = 0b10100001,
    GET_ENCODER = 0b10110001,
    STOP_MOTOR = 0b11000000,
    START_MOTOR = 0b11000001,
    ACK_FAULTS = 0b11000001,
    GET_FAULT = 0b11000001,
    SET_CURRENT = 0b11100000,
    GET_CURRENT = 0b10000000,
};

/**
 * For documentation on fault codes, visit ST MC SDK v6.2.0 documentation page
 * /group___m_c___type.html#fault_codes
 */
enum FAULT_CODES {
    NO_FAULT = 0x0000,
    DURATION = 0x0001,
    OVER_VOLT = 0x0002,
    UNDER_VOLT = 0x0004,
    OVER_TEMP = 0x0008,
    START_UP = 0x0010,
    SPEED_FDBK = 0x0020,
    OVER_CURR = 0x0040,
    SW_ERROR = 0x0080,
    SAMPLE_FAULT = 0x0100,
    OVERCURR_SW = 0x0200,
    DP_FAULT = 0x0400,
};

#endif
