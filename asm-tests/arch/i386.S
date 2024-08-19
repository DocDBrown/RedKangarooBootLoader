// Copyright © [2024] [Nox Ignis].
// This file is part of [Red Kangaroo OS Project].
// Generic i386 bootloader code.

    .section .text
    .global _start

_start:
    xorw %ax, %ax           // Zero out the segment registers
    movw %ax, %ds
    movw %ax, %es
    movw %ax, %ss

    movl $stack_start, %esp // Initialize stack pointer
    call main               // Call the Rust entry point
    hlt                     // Halt the CPU

    .section .bss
    .align 4
stack_start:
    .space 4096             // 4KB stack space
