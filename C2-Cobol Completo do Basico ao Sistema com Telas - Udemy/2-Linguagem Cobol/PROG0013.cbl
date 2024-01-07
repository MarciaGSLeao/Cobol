       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG0013.
      *-----------------------------------------------------------------
      *== AUTOR: MARCIA GAMELEIRA
      *== OBJETIVO: CLAUSULA COPY COM BOOK.
      *== DATA: 25/12/2023
      *== OBSERVACOES:
      *-----------------------------------------------------------------
      *=================================================================
       ENVIRONMENT DIVISION.
       CONFIGURATION   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY "#PROGBOOK".

       PROCEDURE DIVISION.
       0100-RECEBE     SECTION.
           DISPLAY "DIGITE O SEU NOME: "
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SUA IDADE: "
               ACCEPT WRK-IDADE.
           DISPLAY "DIGITE O SALARIO: "
               ACCEPT WRK-SALARIO.

       0200-EXIBE      SECTION.
           DISPLAY "NOME: " WRK-NOME.
           DISPLAY "IDADE: " WRK-IDADE.
           DISPLAY "SALARIO: " WRK-SALARIO.

       0300FINALIZA    SECTION.
           STOP RUN.

       END PROGRAM PROG0013.
