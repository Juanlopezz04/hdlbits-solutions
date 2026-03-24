---
description: >
  Marca el ejercicio como completado, hace commit de los archivos staged y push.
  Uso: /done "Fase1-digital/02_Verilog_Language/Procedures/Always_if3"
---

Ejecuta en orden:

1. git status --short
   Si no hay nada staged (nada en verde), avisar y parar aquí.

2. git diff --cached --name-only
   Verificar que TODOS los archivos staged están dentro de la ruta $ARGUMENTS.
   Si hay algún archivo fuera de esa ruta: AVISAR y pedir confirmación antes de continuar.

3. git commit -m "feat: complete $ARGUMENTS

   Solved, reviewed by hdl-reviewer (qwen3.5:cloud).
   Testbench included."

4. git push origin HEAD

5. Imprimir: "✅ $ARGUMENTS subido a GitHub correctamente"
