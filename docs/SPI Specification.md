# MDFW V6.x SPI Specification (Last Updated 4/5/2025)
# Abstract
This document contains the specifications and protocol documentation for communicating with the motor driver board, version 6.

# Hardware Specifications
- **Communication mode:** *Full Duplex*
- **Frame format:** *Motorola*
- **Data Size:** *8 Bits*
- **Bit Order:** *Big Endian (MSB First)*
- **Clock Rate:** Untested
- **SPI Frequency:** 8MHz

- **Clock**:
    - *CPOL Low*
    - *CPHA 1 Edge (First Edge)*
    - *Up to 32MHz Signals*
    - This configuration is also known as SPI Mode 0.

# How instructions work:
    - instructions are send as one byte opcodes + up to 2 bytes (16 bits) of data.
    - This means that data is stored as *16 bit registers*

# Opcodes (1 byte)
    - noop   - 0b00000000 (0)
    - MOV ax - 0b10000000 (128)
    - GET ax - 0b10000001 (129)
    - MOV bx - 0b10010000 (144)
    - GET bx - 0b10010001 (145)
    - set motor speed ramp - 0b10100000  (160)
    - get motor speed - 0b10100001 (161)
    - get current encoder angle - 0b10110001 (177)
    - stop motor - 0b11000000 (192)
    - start motor - 0b1100001 (193)
    - clear faults - 0b11010000 (208)
    - get faults - 0b11010001 (209)
    - set current to motor - 0b11100000 (228)
    - get current to motor - 0b11100001 (229)

# opcode specification:
## MOV (ax, bx, other set commands)
MOV instructions involve first sending the opcode,
and then sending two 8-bit clock signals of data, for a total of 16 bits.
Data is sent MSB first.

## GET
Get commands are called by sending the relevant opcode, and then two empty clock signals. Data is sent back on the second and third clock signal.

## Start/Stop Motor
1 clock opcode.

## Motor faults
### Clear
1 clock opcode.

### Get Faults
1 clock opcode, then we send a few clock signals

# Sending parameters: Current plan
    - send as 3 bytes 
            1st byte: opcode
            2nd, 3rd byte: instruction value
            4th byte: integrity byte
