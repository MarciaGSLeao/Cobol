      * Autor: Marcia Gameleira
      * Data: 03/06/2025
      * Objetivo: Usando o comando ACCEPT.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM00005.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       INPUT-OUTPUT SECTION.


       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-DATE.
           03 WS-ANO            PIC X(04).
           03 WS-MES            PIC X(02).
           03 WS-DIA            PIC X(02).

       01  WS-TIME.
           03 WS-HORA           PIC X(02).
           03 WS-MIN            PIC X(02).
           03 WS-SEG            PIC X(02).
           03 WS-MS             PIC X(02).

       77  WS-DAY-WEEK-A        PIC X(08).
       77  WS-DAY-WEEK-N        PIC X(01).

       PROCEDURE DIVISION.
       0001-ROTINA-PRINCIPAL SECTION.

           ACCEPT WS-DATE FROM DATE YYYYMMDD
           ACCEPT WS-TIME FROM TIME

           DISPLAY WS-DIA "/" WS-MES "/" WS-ANO
           DISPLAY WS-HORA "h" WS-MIN "m" WS-SEG "s" WS-MS "ms"
           DISPLAY WS-ANO '-' WS-MES '-' WS-DIA ' '
                   WS-HORA ":" WS-MIN ":" WS-SEG "." WS-MS

           STOP RUN.

       END PROGRAM PGM00005.
