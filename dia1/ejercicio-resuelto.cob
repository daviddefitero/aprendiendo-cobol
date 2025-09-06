       IDENTIFICATION DIVISION.
           PROGRAM-ID. EX01.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A-ARG PIC S9(10).
       01 B-ARG PIC S9(10).
       01 NUM-OUT PIC zz,zz9.
       PROCEDURE DIVISION.
           DISPLAY "Introduce a number: " WITH NO ADVANCING.
           ACCEPT A-ARG.
           MOVE A-ARG TO NUM-OUT.
           DISPLAY "Introduce a number: " FUNCTION TRIM (NUM-OUT)
               " + " WITH NO ADVANCING.
           ACCEPT B-ARG.
           COMPUTE NUM-OUT = A-ARG + B-ARG.
           DISPLAY FUNCTION TRIM (NUM-OUT).
           STOP RUN.

