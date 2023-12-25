       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG0012.
      *-----------------------------------------------------------------
      *== AUTOR: MARCIA GAMELEIRA
      *== OBJETIVO: CLAUSULA CALL CHAMANDO UM MODULO.
      *== DATA: 25/12/2023
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
       77 WRK-DATA-CMPLT   PIC X(40).
      *=================================================================
       PROCEDURE DIVISION.
       0001-PRINCIPAL      SECTION.
           CALL "SUBPDATA" USING WRK-DATA-CMPLT.
           DISPLAY WRK-DATA-CMPLT.
           STOP RUN.

       END PROGRAM PROG0012.
