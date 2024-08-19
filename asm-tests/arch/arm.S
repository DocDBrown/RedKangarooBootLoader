// Copyright © [2024] [Nox Ignis].
// This file is part of [Red Kangaroo OS Project].
// ARM-specific bootloader assembly code.

    .section .text
    .global _start

_start:
    ldr sp, =_stack_start  // Initialize stack pointer
    bl main                // Branch to Rust entry point
    b .                    // Infinite loop to avoid fall-through

    .section .bss
    .align 8
    .space 1024            // Reserve 1KB for stack
_stack_start:
