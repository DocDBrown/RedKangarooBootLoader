# Copyright © [2024] [Nox Ignis].
# This file is part of [Red Kangaroo OS Project].
#  A script to build all architectures in one go for CI/ CD

#!/bin/bash

# List of supported architectures
ARCHS=("arm" "i386-pc" "i386" "mips" "powerpc" "sparc64")

# Function to build for a specific architecture
build_arch() {
    local arch=$1
    echo "Building for $arch..."
    cargo build --release --target $arch-unknown-none
}

# Iterate over each architecture and build the bootloader
for arch in "${ARCHS[@]}"; do
    build_arch $arch
done

echo "Build completed for all architectures!"
