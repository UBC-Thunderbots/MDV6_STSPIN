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