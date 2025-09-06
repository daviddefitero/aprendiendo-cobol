# Día 0

El objetivo de hoy será simplemente el de observar un Hello World en COBOL, copiarlo y probar a compilarlo.

Este es un Hello World en COBOL:

``` cobol
       IDENTIFICATION DIVISION.
           PROGRAM-ID. EX00.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MSG PIC X(13).
       PROCEDURE DIVISION.
           MOVE "Hello world!" TO MSG.
           DISPLAY MSG.
           STOP RUN.

```

Si te fijas, primero pasa el Hello World a una variable antes de poner DISPLAY. Esto no es necesario, puedes imprimir directamente el Hello World, es solo para alargar el código y que veas mejor cómo es su sintaxis.

Ahora espera, no lo copies con Ctrl + C y Ctrl + V. Escríbelo tú! Puedes escribirlo de una manera diferente o igual que como esta.

Crearemos nuestro primer fichero COBOL con:

``` bash
vim ex00.cob
```

Si nunca has usado Vim, puede que te estés abrumando ligeramente, pero no te preocupes, es muy sencillo. Te recomiendo que le eches un ojo a este video para [aprender lo básico de Vim](https://www.youtube.com/watch?v=-txKSRn0qeA) (está en inglés, pero puedes usar los subtítulos automáticos de YouTube).

De ahora en adelante, para compilar el fichero, usaremos el comando:

``` bash
cobc -x -Wall -Werror -fixed ejercicio.cob
```

Recuerda que tienes las soluciones en este mismo directorio.
