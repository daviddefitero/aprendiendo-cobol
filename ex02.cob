       IDENTIFICATION DIVISION.
           PROGRAM-ID. EX02.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM PIC 9(5).
       01 T-NUM PIC 9(5).
       01 NUM-OUT PIC ZZ,ZZ9.
       PROCEDURE DIVISION.
           ACCEPT NUM.
           PERFORM VARYING T-NUM FROM 1 BY 1 UNTIL T-NUM IS GREATER 
               THAN NUM
                   MOVE T-NUM TO NUM-OUT
                   DISPLAY FUNCTION TRIM(NUM-OUT) " " WITH NO ADVANCING
                   IF FUNCTION MOD(T-NUM, 2) = 0 THEN
                           DISPLAY "PAR"
                   ELSE
                           DISPLAY "IMPAR"
                   END-IF
                END-PERFORM.
           STOP RUN.
