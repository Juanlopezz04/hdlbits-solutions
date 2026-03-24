---
description: Revisa el archivo HDL indicado, genera tabla de errores y testbench.
---
Lee el archivo $ARGUMENTS.
Usa el agente hdl-reviewer para:
1. Tabla de problemas con severidad
2. Versión corregida con comentarios
3. Testbench en tb/$ARGUMENTS_tb.sv
4. Comando de simulación con GHDL o iverilog
