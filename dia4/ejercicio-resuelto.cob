       IDENTIFICATION DIVISION.
           PROGRAM-ID. EX04.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * Definimos constantes para la keyword de terminar lista y para el
      * maximo de productos.
       78 END-WORD                              VALUE "FIN".
       78 PRODUCTS-MAX-LENGTH                   VALUE 10.
      * Definimos un grupo para el cliente que ademas contendra una
      * tabla de
       01 WS-CLIENT.
           05 WS-NAME                           PIC A(30).
           05 WS-AGE                            PIC 9(3).
           05 WS-BALANCE                        PIC 9(6)V99.
           05 WS-TOTAL                          PIC 9(6)V99 VALUE ZERO.
           05 WS-PRODUCTS-NUM                   PIC 9(2).
           05 WS-PRODUCTS OCCURS 1 TO PRODUCTS-MAX-LENGTH TIMES
                DEPENDING ON WS-PRODUCTS-NUM.
                   10 WS-PRODUCT-NAME           PIC A(30).
                   10 WS-PRODUCT-PRICE          PIC 9(5)V99.
      * Buffers para formateo y almacenar las iteraciones de los bucles.
       01 WS-I-PRODUCT                          PIC 9(2).
       01 WS-INPUT-BUFF                         PIC X(90).      
       01 DISP-NUM                              PIC ZZ,ZZ9.
       01 DISP-CURRENCY                         PIC $$,$$$.99.
       PROCEDURE DIVISION.
      * Para mantener la legibilidad del codigo lo dividire el dos
      * paragraphs. El primero recibira datos, y el segundo los
      * mostrara.
           PERFORM ACCEPT-DATA.
           PERFORM SHOW-SUMMARY.
           STOP RUN.
       ACCEPT-DATA.
      * Empezamos solicitando los datos simples.
           DISPLAY "INTRODUZCA SU NOMBRE: " WITH NO ADVANCING.
           ACCEPT WS-NAME.
           DISPLAY "INTRODUZCA SU EDAD: " WITH NO ADVANCING.
           ACCEPT WS-AGE.
           DISPLAY "INTRODUZCA SU SALDO: " WITH NO ADVANCING.
           ACCEPT WS-BALANCE.
      * Hacemos un bucle para solicitar cada producto. Por cada
      * iteracion aumentara 1 el contador de productos y se parara
      * cuando llegue al maximo de la tabla.
           PERFORM VARYING WS-PRODUCTS-NUM FROM 1 BY 1
                UNTIL WS-PRODUCTS-NUM IS GREATER 
                THAN PRODUCTS-MAX-LENGTH
                   MOVE WS-PRODUCTS-NUM TO DISP-NUM
                   DISPLAY "INTRODUZCA EL PRODUCTO Nº "
                        FUNCTION TRIM (DISP-NUM)
                        " Y SU PRECIO <NOMBRE $PRECIO> (O " END-WORD
                        " PARA TERMINAR) : " WITH NO ADVANCING
                   ACCEPT WS-INPUT-BUFF
                   MOVE FUNCTION UPPER-CASE(WS-INPUT-BUFF) 
                           TO WS-INPUT-BUFF
      * Si el usuario escribe la palabra para finalizar fijada en la
      * constante (FIN) finalizara el paragraph.
                   IF WS-INPUT-BUFF IS EQUAL TO END-WORD
                           SUBTRACT 1 FROM WS-PRODUCTS-NUM
                           EXIT PARAGRAPH
                   END-IF
      * Separa el input del usuario en nombre y precio.
                   UNSTRING WS-INPUT-BUFF DELIMITED BY "$"
                        INTO WS-PRODUCT-NAME(WS-PRODUCTS-NUM),
                        WS-PRODUCT-PRICE(WS-PRODUCTS-NUM)
           END-PERFORM.
           EXIT PARAGRAPH.
       SHOW-SUMMARY.
      * Mostramos los datos simples.
           DISPLAY "********************* TICKET *********************".
           DISPLAY "* NOMBRE: " WS-NAME.
           MOVE WS-AGE TO DISP-NUM.
           DISPLAY "* EDAD: " FUNCTION TRIM (DISP-NUM).
           MOVE WS-BALANCE TO DISP-CURRENCY.
           DISPLAY "* SALDO: " DISP-CURRENCY.
           DISPLAY "* PRODUCTOS:"
      * Para mostrar cada producto de la lista uso un bucle que itera en
      * una variable de iteracion hasta que llegue al numero de
      * productos.
           PERFORM VARYING WS-I-PRODUCT FROM 1 BY 1
                UNTIL WS-I-PRODUCT IS EQUAL TO WS-PRODUCTS-NUM
                   MOVE WS-I-PRODUCT TO DISP-NUM
                   MOVE WS-PRODUCT-PRICE(WS-I-PRODUCT) TO DISP-CURRENCY
                   DISPLAY "* *** Nº" FUNCTION TRIM (DISP-NUM)
                        " " WS-PRODUCT-NAME(WS-I-PRODUCT)
                        " " DISP-CURRENCY
      * Aprovecho y acumulo los precios para mostrar luego el total.
                   ADD WS-PRODUCT-PRICE(WS-I-PRODUCT) TO WS-TOTAL
      * Como curiosidad, en IBM Z se podria hacer la suma de todos los
      * precios a la vez con la funcion SUM y el operador ALL como en 
      * este ejemplo: FUNCTION SUM (WS-PRODUCT-PRICE(ALL)
           END-PERFORM.
           MOVE WS-TOTAL TO DISP-CURRENCY.
           DISPLAY "* TOTAL: " FUNCTION TRIM (DISP-CURRENCY).
           EXIT PARAGRAPH.
