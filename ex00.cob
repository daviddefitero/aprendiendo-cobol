       IDENTIFICATION DIVISION.
           PROGRAM-ID. EX00.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 MSG PIC A(12).
       PROCEDURE DIVISION.
           MOVE "Hello world!" TO MSG.
           DISPLAY MSG.
           STOP RUN.
      