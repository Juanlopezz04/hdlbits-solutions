# Context — Semiconductors Roadmap

Student: 4th year Electrical + Electronic Engineering, UMA (Málaga).
Goal: Master's in Semiconductors/Microelectronics at UPC Barcelona or UC3M Madrid, 2028.
Model: qwen3.5:cloud via Ollama — reasoning, vision and agentic tools available.
GitHub: pushed via VS Code. All repos public.
Erasmus: currently in Turkey, finishing degree in ~2 years.

## Tools installed
- VS Code + Claude Code (qwen3.5:cloud via Ollama)
- GHDL / iverilog — HDL simulation
- LTspice XVII — analog simulation (pending install)
- OpenLane + Skywater 130nm PDK — ASIC flow (Phase 3+)
- Python 3 (numpy, matplotlib)
- Basys 3 FPGA (to buy, Phase 1 end)

## Roadmap status
- DONE: HDLBits Vectors + Modules, GitHub setup, VS Code
- NOW: HDLBits Procedures → Combinational → Sequential → Building larger circuits
- NEXT: LTspice install, Neamen reading, BCD counter project

## HDL code style
- Synchronous: always_ff @(posedge clk)
- Async active-low reset: if (!rst_n)
- Modules: PascalCase | Signals: snake_case
- Testbenches always in tb/<module>_tb.sv
- Comments in Spanish OK, code and inline comments in English

## Agent auto-selection guide
- HDL code / waveform / synthesis → hdl-reviewer
- LTspice / SPICE / analog circuit → ltspice-tutor
- OpenLane / timing / GDS / layout → openlane-flow
- Theory / exam / books (Neamen, Razavi...) → study-tutor
- README / CV / cover letter → portfolio-writer

## Rules
- Explain WHY before HOW
- Never solve HDLBits problems before I attempt them
- Flag synthesis issues before fixing
- Vision available: I can send screenshots of waveforms, layouts, schematics
