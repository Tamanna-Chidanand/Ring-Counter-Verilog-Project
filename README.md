# Ring-Counter-Verilog-Project
Ring Counter Verilog Project
This project implements a 4-bit ring counter in Verilog. The ring counter shifts a single '1' through a 4-bit register, creating a circular pattern. The design includes a testbench for simulation, allowing verification of the counter's functionality.

## Overview

- **Module**: `ring_counter`
  - **Inputs**:
    - `clk`: Clock signal.
    - `rst`: Reset signal.
  - **Outputs**:
    - `out`: 4-bit output representing the current state of the ring counter.

- **Testbench**: `test_ring_counter`
  - Generates clock and reset signals.
  - Monitors the output of the ring counter for verification.

## Features

- **Clock Generation**: The testbench simulates a clock with a period of 10 time units.
- **Reset Functionality**: The counter initializes to `0001` on reset and shifts left with each clock cycle.
- **Circular Behavior**: The counter resets to `0001` after reaching `1000`.

## Files

- `ring.v`: The main ring counter module implementation.
- `ring_tb.v`: The testbench for simulating the ring counter.

## Simulation

To run the simulation:

1. **Install a Verilog Simulator**: Ensure you have a Verilog simulator installed (e.g., ModelSim, Icarus Verilog).
  
2. **Compile the Design**:
   ```bash
   iverilog -o ring_counter.vvp ring.v ring_tb.v
3. Run: vvp ring_counter.vvp
