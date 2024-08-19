# Copyright © [2024] [Nox Ignis].
# This file is part of [Red Kangaroo OS Project].
# A script that takes an architecture as an argument, builds the corresponding bootloader, and runs it in QEMU or another emulator
# test_bootloader.sh
# Usage: ./test_bootloader.sh <architecture>

ARCH=$1
qemu-system-$ARCH -kernel target/$ARCH/release/bootloader
