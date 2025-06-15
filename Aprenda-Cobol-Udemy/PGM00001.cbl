      * Autor: Marcia Gameleira
      * Data: 03/06/2025
      * Objetivo: Primeiro Programa

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM00001.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       INPUT-OUTPUT SECTION.


       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WS-N1                 PIC 9(03)   VALUE    ZEROS COMP-3.
       77  WS-N2                 PIC 9(03)   VALUE    ZEROS COMP-3.
       77  WS-RES                PIC 9(04)   VALUE    ZEROS COMP-3.
       77  WS-RES-FORM           PIC Z(04)   VALUE    ZEROS.

       01  WS-MESES-ANO          PIC 99 VALUE ZEROS.
           88  WS-MES-ATUAL             VALUES 1 THRU 12.

       PROCEDURE DIVISION.
       0001-ROTINA-PRINCIPAL SECTION.

            MOVE 5 TO WS-N1
            MOVE 3 TO WS-N2

            COMPUTE WS-RES = WS-N1 + WS-N2
            COMPUTE WS-RES-FORM = WS-N1 + WS-N2

            DISPLAY 'O RESULTADO EH: ' WS-RES
            DISPLAY 'O RESULTADO EH: ' WS-RES-FORM

            GOBACK.

       END PROGRAM PGM00001.
