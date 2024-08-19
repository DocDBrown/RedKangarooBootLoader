# Assembly and Rust Bootloader Tests

This directory contains the architecture-specific assembly bootloaders and test scripts for the Red Kangaroo OS bootloader.

## Directory Structure

- `arch/`: Contains assembly files for each supported architecture.
- `src/`: Contains the Rust entry point (`main.rs`).
- `tests/`: Holds any Rust-based tests.
- `scripts/`: Contains scripts for building and testing the bootloader.
- `Makefile`: Provides commands to build and test across all architectures.

## Building

To build for all architectures:

```sh
make all
```
