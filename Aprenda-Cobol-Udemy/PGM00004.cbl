      * Autor: Marcia Gameleira
      * Data: 03/06/2025
      * Objetivo: Trabalhando com Arquivos e Strings.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM00003.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       INPUT-OUTPUT SECTION.


       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       COPY 'PGMK0003'


       PROCEDURE DIVISION.
       0001-ROTINA-PRINCIPAL SECTION.

           MOVE 'MARCIA'       TO  BK-NM-PRI.
           MOVE 'GAMELEIRA'    TO  BK-NM-SEG.

           DISPLAY 'NOME COMPLETO: ' BK-NOME.


           STOP RUN.

       END PROGRAM PGM00003.
