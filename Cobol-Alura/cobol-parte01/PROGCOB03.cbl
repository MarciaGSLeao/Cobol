       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB03.
      ******************************************************************
      * AUTHOR: MARCIA GAMELEIRA
      * OBJETIVO: RECEBER E IMPRIMIR A DATA DO SISTEMA.
      *           UTILIZAR O CONCEITO DE NÍVEIS DE VARIÁVEIS.
      * DATA: 25/10/2023
      ******************************************************************
       ENVIRONMENT DIVISION.

      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
           02 WRK-ANO  PIC 9(4) VALUES 0.
           02 WRK-MES  PIC 9(2) VALUES 0.
           02 WRK-DIA  PIC 9(2) VALUES 0.

      ******************************************************************
       PROCEDURE DIVISION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY "DATA: " WRK-DIA "/" WRK-MES "/" WRK-ANO.
           STOP RUN.
       END PROGRAM PROGCOB03.
