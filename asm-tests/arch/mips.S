// Copyright © [2024] [Nox Ignis].
// This file is part of [Red Kangaroo OS Project].
// MIPS architecture bootloader code.

    .section .text
    .global _start

_start:
    la sp, _stack_start     // Load stack pointer
    jal main                // Jump to the Rust entry point
    nop                     // Delay slot instruction

    b .                     // Infinite loop to avoid fall-through

    .section .bss
    .align 8
_stack_start:
    .space 4096             // 4KB stack space
