       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      ******************************************************************
      * AUTHOR: MARCIA GAMELEIRA
      * OBJETIVO: OPERADORES ARITMETICOS.
      * DATA: 26/10/2023
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-NUM1          PIC 9(3)        VALUES 0.
       01 WRK-NUM2          PIC 9(3)        VALUES 0.
       01 WRK-RESULT        PIC S9(4)       VALUES 0.
       01 WRK-RESULT-FORM   PIC -ZZ9        VALUES 0.
       01 WRK-RESTO         PIC 9(2)        VALUES 0.

      ******************************************************************
       PROCEDURE DIVISION.
      **** RECEBER DADOS
           ACCEPT WRK-NUM1     FROM CONSOLE.
           ACCEPT WRK-NUM2  FROM CONSOLE.

      **** EXIBIR DADOS
           DISPLAY "NUMERO 1: "  WRK-NUM1.
           DISPLAY "NUMERO 2: "  WRK-NUM2.
           DISPLAY "====================="

      **** OPERA플O DE SOMA
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESULT.
           DISPLAY "SOMA: " WRK-RESULT.

      **** OPERA플O DE SUBTRA플O
           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESULT.
           MOVE WRK-RESULT TO WRK-RESULT-FORM.
           DISPLAY "SUBTRACAO: " WRK-RESULT-FORM.

      **** OPERA플O DE MULTIPLICA플O
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT.
           DISPLAY "MULTIPLICACAO: " WRK-RESULT.

      ***** OPERA플O DE DIVIS홒
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT
               REMAINDER WRK-RESTO.
           DISPLAY "DIVISAO: " WRK-RESULT.
           DISPLAY "RESTO DA DIVISAO: " WRK-RESTO.

      ***** OPERADOR COMPUTE
           COMPUTE WRK-RESULT = (WRK-NUM1 + WRK-NUM2) / 2.
           DISPLAY "MEDIA: " WRK-RESULT.

           STOP RUN.
       END PROGRAM PROGCOB05.
