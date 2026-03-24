---
description: >
  Marca el ejercicio actual como completado, hace commit SOLO de los archivos
  staged y push a GitHub. Respeta la estructura de carpetas existente.
  Uso: /done "seccion/ejercicio"
  Ejemplo: /done "02_Verilog_Language/Procedures/Always_if"
---

Ejecuta en orden:

1. git status --short
   (muestra qué archivos están staged — si está vacío, avisar y parar)

2. git diff --cached --name-only
   (confirmar que SOLO están los archivos del ejercicio indicado, nada más)

3. Si hay archivos fuera de la carpeta esperada del ejercicio $ARGUMENTS:
   AVISAR al usuario antes de continuar. No hacer commit sin confirmación.

4. git commit -m "feat: complete $ARGUMENTS

   Exercise solved, reviewed and testbench included.
   Reviewed with hdl-reviewer agent (qwen3.5:cloud)"

5. git push origin HEAD

6. Imprimir: "✅ Subido: $ARGUMENTS → github.com/<usuario>/<repo>"
