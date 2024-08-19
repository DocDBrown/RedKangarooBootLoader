// Copyright © [2024] [Nox Ignis].
// This file is part of [Red Kangaroo OS Project].
// SPARC64 bootloader code.

    .section ".text"
    .global _start

_start:
    sethi %hi(_stack_start), %sp
    or %sp, %lo(_stack_start), %sp // Initialize stack pointer

    call main                       // Call Rust entry point
    nop                             // Delay slot instruction

    ba,pt %icc, .                   // Branch always, infinite loop
    nop                             // Delay slot instruction

    .section ".bss"
    .align 8
_stack_start:
    .skip 4096                      // 4KB stack space
