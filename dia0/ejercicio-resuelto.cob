       IDENTIFICATION DIVISION.
           PROGRAM-ID. EX00.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MSG  PIC X(13).
       PROCEDURE DIVISION.
           MOVE "Hello world!" TO MSG.
           DISPLAY MSG.
           STOP RUN.
      