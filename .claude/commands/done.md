---
description: >
  Marca el ejercicio como completado, stagea SOLO ese archivo y su testbench,
  hace commit y push. No requiere git add previo.
  Uso: /done "Fase1-digital/02_Verilog_Language/Procedures/Always_casez"
---

Ejecuta en orden estos comandos bash:

1. git restore --staged . (limpiar cualquier staging previo accidental)

2. Buscar el archivo fuente y su testbench en la ruta $ARGUMENTS:
   - git add "$ARGUMENTS.v"  (si existe)
   - git add "$ARGUMENTS.sv" (si existe)
   - git add "$ARGUMENTS.vhd" (si existe)
   - git add "$(dirname $ARGUMENTS)/$(basename $ARGUMENTS)_tb.v"  (si existe)
   - git add "$(dirname $ARGUMENTS)/$(basename $ARGUMENTS)_tb.sv" (si existe)

3. git status --short
   Si no hay nada en verde: avisar "No se encontró el archivo. Verifica la ruta." y parar.
   Si hay archivos FUERA de la carpeta del ejercicio: avisar y pedir confirmación.

4. git commit -m "feat: complete $(basename $ARGUMENTS)

   Solved and reviewed with hdl-reviewer (qwen3.5).
   Testbench included."

5. git push origin HEAD

6. Imprimir: "✅ $(basename $ARGUMENTS) subido a GitHub"

