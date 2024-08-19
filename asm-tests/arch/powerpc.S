// Copyright © [2024] [Nox Ignis].
// This file is part of [Red Kangaroo OS Project].
// PowerPC bootloader code.

    .section .text
    .global _start

_start:
    lis r1, _stack_start@ha // Load the stack pointer
    addi r1, r1, _stack_start@l

    bl main                 // Branch to Rust entry point
    b .                     // Infinite loop to avoid fall-through

    .section .bss
    .align 8
_stack_start:
    .space 4096             // 4KB stack space
