       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG10.
      *-----------------------------------------------------------------
      *== AUTOR: MARCIA GAMELEIRA
      *== OBJETIVO: BOAS PRÁTICAS COM 'PERFORM'.
      *== DATA: 04/11/2023
      *== OBSERVACOES:
      *-----------------------------------------------------------------

      *=================================================================
       ENVIRONMENT DIVISION.
       CONFIGURATION   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *=================================================================
       DATA DIVISION.
       WORKING-STORAGE SECTION.


      *=================================================================
       PROCEDURE DIVISION.
       0000-PRINCIPAL          SECTION.
           PERFORM 0001-INICIALIZAR
           PERFORM 0002-PROCESSAR
           PERFORM 0003-FINALIZAR
           STOP RUN.

       0001-INICIALIZAR        SECTION.
           DISPLAY "PRIMEIRA SESSAO".

       0002-PROCESSAR          SECTION.
           DISPLAY "SEGUNDA SESSAO".

       0003-FINALIZAR          SECTION.
           DISPLAY "TERCEIRA SESSAO".

       END PROGRAM PROG10.
