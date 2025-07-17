# Traffic Light Controller (TLC) – FPGA VHDL Implementation

This project implements a fully functional **Traffic Light Controller** using **VHDL** on the **LogicalStep FPGA development board**. The design features a synchronous **Moore state machine** (configurable as Mealy), pedestrian request integration, and metastability protection using synchronizers and holding registers.

## 💡 Project Overview

This was developed for **Lab 4** of the **ECE 124: Digital Circuits and Systems** course at the **University of Waterloo**. The controller manages a 2-way intersection (North-South and East-West) with:

- Independent traffic light timing sequences
- Pedestrian crossing request buttons
- Support for ONLINE/OFFLINE operating modes
- Debounced and synchronized asynchronous inputs
- A flashing GREEN or RED phase using a `blink_sig` clock

## 🧰 Tools & Technologies

- **Intel Quartus Prime 18.1**
- **VHDL (Structural + Behavioral)**
- **LogicalStep FPGA board**
- **ModelSim** (for simulation)

## ⚙️ Features

✅ 16-state Moore (or Mealy) state machine  
✅ NS and EW light control via 7-segment displays  
✅ Pedestrian crossing requests via pushbuttons  
✅ Synchronizers and holding registers to avoid metastability  
✅ Synchronous design using a 50 MHz global clock  
✅ Simulation-friendly `SIM_MODE` toggle  
✅ ONLINE/OFFLINE switch mode (SW0)

## 🚦 TLC Light Mapping

Each 7-segment display uses only three segments:
- Segment A (Top) → **Red**
- Segment G (Middle) → **Amber**
- Segment D (Bottom) → **Green**

## 🔄 State Machine Design

The system cycles through 16 distinct states to simulate real-world traffic light behavior. Pedestrian inputs may cause **conditional jumps** in the sequence, but always ensure **safe AMBER transitions** before RED.

State transitions are driven by:
- `sm_clken` (Clock Enable pulse from clock generator)
- `blink_sig` (Flashing support for some states)
- NS and EW pedestrian requests (via `pb_n(0)` and `pb_n(1)`)

## 🧪 Simulation Tips

- Use `.vwf` files to simulate 32 µs of system time  
- Test both pedestrian requests (NS at ~15.6 µs, EW at ~17.6 µs)  
- Observe behavior on `leds[7:0]` and `seg7` output

## 📷 System Overview

### 🔧 Traffic Light Controller (TLC) Block Diagram (From Manual)

![Traffic Light Controller TLC Block Diagram](https://github.com/user-attachments/assets/ddabd491-b327-4c51-ae5c-46a6125b517c)
*(Reference from ECE 124 Lab Manual)*
