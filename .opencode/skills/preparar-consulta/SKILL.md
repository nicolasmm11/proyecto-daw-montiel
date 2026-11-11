---
name: preparar-consulta
description: Prepara el texto de un correo de duda al tutor (asunto y cuerpo) tras revisar claves, datos personales y capturas. No envía nada.
---

# preparar-consulta

## Objetivo
Armar un correo de duda que el tutor pueda resolver **en un solo mensaje**. Entrega el texto para que lo copies y lo envíes tú.

## Cuándo se usa
Llevas unos 10 minutos bloqueado, ya probaste `/diagnosticar-error` (si es de Git) y no se resuelve. Se trabaja en casa: el correo es el canal para dudas y avisos; el trabajo se revisa en el Pull Request.

## Paso 0: revisión de seguridad (antes de redactar)
Revisa todo lo que me pases y **avisa** si hay:
- Claves, tokens, contraseñas, cadenas de conexión, ficheros `.env`.
- Nombres, correos, teléfonos o usuarios de terceros (compañeros, clientes, empresas reales con datos).
- Capturas de pantalla que muestren datos personales, pestañas, correos o claves.
- Rutas con tu nombre de usuario del sistema, si no quieres compartirlas.
Si hay algo, di qué es y pide que lo quites o lo sustituyas por un marcador (`<clave>`, `<correo>`) **antes** de seguir. No lo copies en el borrador.

## Datos que pide (uno a uno; lo que falte, lo pregunta)
- Fase del proyecto.
- Qué intentaste (comando o acción exacta).
- Qué esperabas.
- Qué pasó, con el **error literal** (copiado, no resumido).
- Qué probaste ya durante ~10 minutos.
- Enlace al repositorio o al PR.

## Formato de salida
```text
Para: pablomdg@educastur.org
Asunto: [Proyecto DAW] <fase> · <resumen en pocas palabras>

Hola:
1. Qué intenté: ...
2. Qué esperaba: ...
3. Qué pasó (error literal): ...
4. Qué probé ya (~10 min): ...
5. Enlace: <repositorio o PR>
Gracias.
```
Después del texto añade el recordatorio: **anota el bloqueo en `docs/registro-tutoria.md`** (columna «Bloqueos»).

## Dirección y plazo
- La dirección del tutor es `pablomdg@educastur.org` (correo institucional público de docente, autorizado por el profesor). El protocolo completo está en la guía de ayuda del curso (`docs/guiaProyecto/contacto-y-ayuda.md`, repositorio del curso).
- **Mantenimiento:** la dirección está duplicada de esa guía; si cambia, hay que actualizar **ambas**.
- **Plazo de respuesta:** el tutor responde en un máximo de **72 horas** desde que recibe el correo (decisión del profesor, 2026-11-08; cuentan fines de semana y festivos). No prometas ningún otro plazo.

## Qué NO hace
- **No envía** nada: no tiene ni debe tener acceso al correo.
- No inventa errores, pasos ni enlaces; no rellena huecos por ti.
- No pide que adjuntes claves ni capturas con datos.
- No resuelve la duda (para eso, `/diagnosticar-error` antes); no califica.

## Permisos
Hereda los del agente activo (pensada para `guia-de-pasos`, sin edición ni shell salvo Git de solo lectura). No necesita ninguno más.

## Cómo probarla
Usa un escenario ficticio (sin repositorio real): debe avisar si pegas algo parecido a una clave, y devolver asunto `[Proyecto DAW] ...` y los 5 apartados.

## Cómo se declara su uso
Una fila en `docs/declaracion-uso-ia.md` (con `/declarar-uso-ia`). El correo lo envías y firmas tú.
