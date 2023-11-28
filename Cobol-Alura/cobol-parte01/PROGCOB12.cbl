       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB12.
      ******************************************************************
      * AUTHOR: MARCIA GAMELEIRA
      * OBJETIVO: UTILIZAR VARIAVEL DO TIPO TABELA - OCCURS
      * DATA: 25/10/2023
      ******************************************************************
       ENVIRONMENT DIVISION.

      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WRK-MES-EXTENSO.
           02 FILLER PIC X(3) VALUE "JAN".
           02 FILLER PIC X(3) VALUE "FEV".
           02 FILLER PIC X(3) VALUE "MAR".
           02 FILLER PIC X(3) VALUE "ABR".
           02 FILLER PIC X(3) VALUE "MAI".
           02 FILLER PIC X(3) VALUE "JUN".
           02 FILLER PIC X(3) VALUE "JUL".
           02 FILLER PIC X(3) VALUE "AGO".
           02 FILLER PIC X(3) VALUE "SET".
           02 FILLER PIC X(3) VALUE "OUT".
           02 FILLER PIC X(3) VALUE "NOV".
           02 FILLER PIC X(3) VALUE "DEZ".

       01 WRK-MESES REDEFINES WRK-MES-EXTENSO.
           02 WRK-MES  PIC X(3) OCCURS 12 TIMES.

       01 WRK-DATASYS.
           02 ANOSYS  PIC 9(4) VALUES 0.
           02 MESSYS  PIC 9(2) VALUES 0.
           02 DIASYS  PIC 9(2) VALUES 0.

      ******************************************************************
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           ACCEPT WRK-DATASYS FROM DATE YYYYMMDD.
      *     PERFORM 0400-MONTAMES.
           DISPLAY "DATA: " DIASYS "/ " WRK-MES(MESSYS) "/" ANOSYS.

           STOP RUN.

      * 0400-MONTAMES.
      *     MOVE "JANEIRO"  TO WRK-MES(01).
      *     MOVE "FEVREIRO" TO WRK-MES(02).
      *     MOVE "MARCO"    TO WRK-MES(03).
      *     MOVE "ABRIL"    TO WRK-MES(04).
      *     MOVE "MAIO"     TO WRK-MES(05).
      *     MOVE "JUNHO"    TO WRK-MES(06).
      *     MOVE "JULHO"    TO WRK-MES(07).
      *     MOVE "AGOSTO"   TO WRK-MES(08).
      *     MOVE "SETEMBRO" TO WRK-MES(09).
      *     MOVE "OUTUBRO"  TO WRK-MES(10).
      *     MOVE "NOVEMBRO" TO WRK-MES(11).
      *     MOVE "DEZEMBRO" TO WRK-MES(12).

       END PROGRAM PROGCOB12.
