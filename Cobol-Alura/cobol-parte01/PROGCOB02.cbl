       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.
      ******************************************************************
      * AUTHOR: MARCIA GAMELEIRA
      * OBJETIVO: RECEBER E IMPRIMIR UMA STRING.
      * DATA: 25/10/2023
      ******************************************************************
       ENVIRONMENT DIVISION.
      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME     PIC X(30) VALUE SPACES.
      ******************************************************************
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY "NOME DIGITADO: " WRK-NOME.
           DISPLAY "SOBRENOME: " WRK-NOME(8:).
           STOP RUN.
       END PROGRAM PROGCOB02.
