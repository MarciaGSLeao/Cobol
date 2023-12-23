       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB11.
      ******************************************************************
      * AUTHOR: MARCIA GAMELEIRA
      * OBJETIVO: UTILIZANDO PERFORM / TIMES / UNTIL.
      *           RECEBER UM NUMERO E GERAR A TABUADA DE 1 A 10.
      * DATA: 26/11/2023
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-N1    PIC 9(03)   VALUE ZEROS.
       77 WRK-N2    PIC 9(03)   VALUE 1.
       77 WRK-RES   PIC 9(03)   VALUE ZEROS.

      ******************************************************************
       PROCEDURE DIVISION.
       0001-PRINCIPAL.

           PERFORM 0002-INICIALIZACAO
           IF WRK-N1 > 0
               PERFORM 0003-PROCESSAMENTO
           END-IF
           PERFORM 0004-FINALIZACAO
           STOP RUN
       .
       0002-INICIALIZACAO.
           DISPLAY "DIGITE UM NUMERO: "
           ACCEPT WRK-N1
       .
       0003-PROCESSAMENTO.
           PERFORM 10 TIMES
               COMPUTE WRK-RES = WRK-N1 * WRK-N2
               DISPLAY WRK-N1 " x " WRK-N2 " = " WRK-RES
               ADD 1 TO WRK-N2
           END-PERFORM

      *    PERFORM VARYING WRK-N2 FROM 1 BY 1 UNTIL WRK-N2 > 10
      *        COMPUTE WRK-RES = WRK-N1 * WRK-N2
      *        DISPLAY WRK-N1 " x " WRK-N2 " = " WRK-RES
      *    END-PERFORM

       .
       0004-FINALIZACAO.
           DISPLAY "------------------------------"
           DISPLAY "FINAL DO PROGRAMA.".

       END PROGRAM PROGCOB11.
