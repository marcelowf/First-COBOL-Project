       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIRSTCOBOL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-V1 PIC 9(09).
       01 WS-V2 PIC 9(09).
       01 WS-RE PIC 9(09).
       01 WS-OP PIC X(01).
       
       PROCEDURE DIVISION.
           DISPLAY "----------INICIO----------".
           DISPLAY "VALOR 1:"
           ACCEPT WS-V1.
           DISPLAY "VALOR 2:"
           ACCEPT WS-V2.
           DISPLAY "OPERACAO:"
           ACCEPT WS-OP.
       
           IF WS-OP = "+" 
              COMPUTE WS-RE = WS-V1 + WS-V2
              DISPLAY WS-V1 " + " WS-V2 " = " WS-RE
           END-IF.

           IF WS-OP = "-" 
              COMPUTE WS-RE = WS-V1 - WS-V2
              DISPLAY WS-V1 " - " WS-V2 " = " WS-RE
           END-IF.

           IF WS-OP = "*" 
              COMPUTE WS-RE = WS-V1 * WS-V2
              DISPLAY WS-V1 " x " WS-V2 " = " WS-RE
           END-IF.
           
           IF WS-OP = "/" 
              DIVIDE WS-V1 BY WS-V2 GIVING WS-RE
              DISPLAY WS-V1 " / " WS-V2 " = " WS-RE
           END-IF.
       
           DISPLAY "-----------FIM-----------".
           STOP RUN.
       END PROGRAM FIRSTCOBOL.
       