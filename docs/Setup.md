# Setup
How to set up the project.

# Compilation
Compilation requires `arm-none-eabi-gcc`—also known as `gnu-arm-embedded`.

```sh
# ubuntu
sudo apt install gcc-arm-none-eabi
# mac
brew install arm-none-eabi-gcc
# nix
pkgs.gcc-arm-embedded
```

# flashing
use stm32cubeide or stm32cubeprog

# debuggin
use stm32cubeide (idk how to set up openocd yet)

# hardware setup
the SPI pinout is broken on mdv6.1/2/3.

SPI master pin --> MDV6.1/2/3 pin
CS --> CS
CLK --> MISO
MISO --> MOSI
MOSI --> CLK

# example SPI commands

## GET AX
h73 h83 h00 h00 h49 h45

## MOV AX 1234
h73 h82 h04 hD2 h67 h45

## NOOP
h73 h00 h00 h00 h96 h45