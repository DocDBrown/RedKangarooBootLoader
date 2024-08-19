# Copyright © [2024] [Nox Ignis].
# This file is part of [Red Kangaroo OS Project].
# A script to run tests for all architectures sequentially.

#!/bin/bash

# List of architectures and their corresponding QEMU emulator commands
declare -A QEMU_EMULATORS=(
    ["arm"]="qemu-system-arm -M versatilepb -nographic"
    ["i386-pc"]="qemu-system-i386 -M pc -nographic"
    ["i386"]="qemu-system-i386 -nographic"
    ["mips"]="qemu-system-mips -M malta -nographic"
    ["powerpc"]="qemu-system-ppc -M mac99 -nographic"
    ["sparc64"]="qemu-system-sparc64 -nographic"
)

# Function to run tests for a specific architecture
run_test() {
    local arch=$1
    local emulator=${QEMU_EMULATORS[$arch]}

    echo "Running test for $arch..."
    if $emulator -kernel target/$arch/release/bootloader; then
        echo "$arch: Test Passed!"
    else
        echo "$arch: Test Failed!"
        exit 1
    fi
}

# Iterate over each architecture and run the tests
for arch in "${!QEMU_EMULATORS[@]}"; do
    run_test $arch
done

echo "All tests passed!"
