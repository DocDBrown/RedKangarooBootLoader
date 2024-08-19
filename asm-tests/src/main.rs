// Copyright © [2024] [Nox Ignis].
// This file is part of [Red Kangaroo OS Project].
// Rust entry point with minimal logic, like an infinite loop, for testing purposes

#![no_std]
#![no_main]

use core::panic::PanicInfo;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

/// The entry point for the bootloader.
#[no_mangle]
pub extern "C" fn main() -> ! {
    // Initialization code here (if any)

    // Example output to confirm bootloader works
    // Note: Replace this with your actual architecture-specific output logic
    #[cfg(target_arch = "arm")]
    {
        // ARM-specific code
    }

    #[cfg(target_arch = "x86_64")]
    {
        // x86_64-specific code
    }

    // Infinite loop to halt the system
    loop {}
}
