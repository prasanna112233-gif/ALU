# Simple Verilog ALU

> A basic ALU (Arithmetic Logic Unit) module supporting addition, subtraction, AND, OR, NOT with testbench and waveform support.

## ✅ Features
- Parameterizable bit-width (default 4-bit)
- Operations via opcode input:
  - 000: ADD
  - 001: SUB
  - 010: AND
  - 011: OR
  - 100: NOT (on A)
- Includes VCD waveform dump for GTKWave/EPWave

## 🔧 Requirements
- Icarus Verilog (free simulator)
- GTKWave (waveform viewer)
- (Optional) EDA Playground or other online HDL tools

## 🚀 How to Simulate
```bash
iverilog -o alu_tb.vvp alu.v testbench.v
vvp alu_tb.vvp
gtkwave dump.vcd &
Or use EDA Playground:

Select Icarus Verilog 12.0 in Tools & Simulators

Enable Open EPWave after run

Click Run and waveform viewer appears

🧪 Files
alu.v — ALU module

testbench.v — Testbench with $dumpfile, $dumpvars, stimulus, and $display

dump.vcd — Auto-generated waveform dump

(Optional) Makefile — Run commands via make sim, make wave, etc.

📄 Usage Examples
To perform A=4, B=2, OP=000 (ADD): ensures result=6

Shows waveform transitions in GTKWave/EPWave

📚 References / Credits
Example code adapted from nī guidance/testbench suggestions

Learn more about $dumpfile & $dumpvars from Internet tutorials

⚖ License
MIT License — see LICENSE for detail.

🤝 Contribution
Feel free to extend with flags (zero, carry), more ops, or FPGA integration

For issues or suggestions, open a ticket or message directly

✍ Notes
Always use ASCII double quotes "dump.vcd"

Ensure delay #10; statements end with semicolons

initial block must reside inside the module (testbench)
