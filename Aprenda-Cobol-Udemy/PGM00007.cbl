      * Autor: Marcia Gameleira
      * Data: 03/06/2025
      * Objetivo: Usando o comando INSPECT.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM00007.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       INPUT-OUTPUT SECTION.


       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-DATE.
           03 WS-ANO            PIC X(04).
           03 FILLER            PIC X(01) VALUE '/' .
           03 WS-MES            PIC X(02).
           03 FILLER            PIC X(01) VALUE '/' .
           03 WS-DIA            PIC X(02).

       77  WS-CONT-BARRA        PIC 999.

       PROCEDURE DIVISION.
       0001-ROTINA-PRINCIPAL SECTION.

           MOVE '05'                TO WS-DIA
           MOVE '06'                TO WS-MES
           MOVE '2025'              TO WS-ANO

           DISPLAY WS-DATE

           INSPECT WS-DATE TALLYING WS-CONT-BARRA FOR ALL '/'
      *>      AFTER INITIAL '2025'
           DISPLAY WS-CONT-BARRA

           INSPECT WS-DATE REPLACING ALL '/' BY '-'
      *>      BEFORE INITIAL '2025'
           DISPLAY WS-DATE

           STOP RUN.

       END PROGRAM PGM00007.
