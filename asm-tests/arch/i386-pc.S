// Copyright © [2024] [Nox Ignis].
// This file is part of [Red Kangaroo OS Project].
// i386 bootloader for a PC environment with BIOS.

    .section .text
    .global _start
    .code16

_start:
    cli                     // Disable interrupts
    xorw %ax, %ax           // Zero out the segment registers
    movw %ax, %ds
    movw %ax, %es
    movw %ax, %ss

    movw $0x7C00, %sp       // Set up the stack pointer (e.g., at the top of the boot sector)
    call main               // Call the Rust entry point
    hlt                     // Halt the CPU

    .section .bss
    .align 4
_stack_start:
