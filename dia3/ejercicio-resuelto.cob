       IDENTIFICATION DIVISION.
           PROGRAM-ID.  EX03.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USER-INPUT    PIC X(60).
       01 NAME-1        PIC X(20).
       01 NAME-2        PIC X(20).
       01 NAME-3        PIC X(20).
       01 NUM-NAME-2    PIC 9(2).
       PROCEDURE DIVISION.
      * Pedimos al usuario que introduzca las palabras.
           DISPLAY "INTRODUZCA 3 PALABRAS DIVIDIDAS POR COMAS: "
                   WITH NO ADVANCING.
           ACCEPT USER-INPUT.
      * Dividimos el input en 3 variables diferentes.
           UNSTRING USER-INPUT DELIMITED BY ","
                   INTO NAME-1, NAME-2, NAME-3
                   END-UNSTRING.
      * Pasamos a mayusculas y quitamos espacios.
           MOVE FUNCTION UPPER-CASE (FUNCTION TRIM (NAME-1)) TO NAME-1.
           MOVE FUNCTION UPPER-CASE (FUNCTION TRIM (NAME-2)) TO NAME-2.
           MOVE FUNCTION UPPER-CASE (FUNCTION TRIM (NAME-3)) TO NAME-3.
      * Convertimos las vocales a numeros
           INSPECT NAME-1 REPLACING ALL "A" BY "4".
           INSPECT NAME-1 REPLACING ALL "E" BY "3".
           INSPECT NAME-1 REPLACING ALL "I" BY "1".
           INSPECT NAME-1 REPLACING ALL "O" BY "0".
           INSPECT NAME-1 REPLACING ALL "U" BY "5".
      * Vuelvo a usar TRIM porque en COBOL las variables se rellenan de
      * espacios hasta llegar a la longitud reservada.
           DISPLAY FUNCTION TRIM (NAME-1).
      * Contamos los caracteres.
           INSPECT FUNCTION TRIM (NAME-2) TALLYING NUM-NAME-2
                   FOR CHARACTERS.
           DISPLAY FUNCTION TRIM (NAME-2) " TIENE " NUM-NAME-2 
                   " LETRAS".
      * Mostramos la segunda letra. 
           DISPLAY "La segunda letra de " FUNCTION TRIM (NAME-3) " es "
                   NAME-3(2:1).
           STOP RUN.
