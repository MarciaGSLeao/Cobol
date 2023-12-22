       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA04.
      *==========================================================
      *== AUTOR: MARCIA GAMELEIRA
      *== OBJETIVO: TRABALHANDO COM DATAS / COMANDOS FILLER E CORR.
      *== DATA: 08/10/2023
      *== OBSERVACOES:
      *==========================================================

       ENVIRONMENT DIVISION.
       CONFIGURATION   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
           02 WRK-ANO  PIC X(4)    VALUES SPACES.
           02 WRK-MES  PIC X(2)    VALUES SPACES.
           02 WRK-DIA  PIC X(2)    VALUES SPACES.

       01 WRK-DATA2.
           02 WRK-DIA  PIC X(2)    VALUES SPACES.
           02 FILLER  PIC X(1)     VALUES "/".
           02 WRK-MES  PIC X(2)    VALUES SPACES.
           02 FILLER  PIC X(1)     VALUES "/".
           02 WRK-ANO  PIC X(4)    VALUES SPACES.

       PROCEDURE DIVISION.
       0001-RECEBE     SECTION.
            ACCEPT WRK-DATA FROM DATE YYYYMMDD.
            MOVE CORR WRK-DATA TO WRK-DATA2.

       0002-EXIBE-MOD1      SECTION.
           DISPLAY "DATA-FORMATACAO1: " WRK-DIA OF WRK-DATA "/"
                            WRK-MES OF WRK-DATA "/"
                            WRK-ANO OF WRK-DATA.

       0003-EXIBE-MOD2      SECTION.
           DISPLAY "DATA-FORMATACAO2: " WRK-DATA2.

       0004-FINALIZAR       SECTION.
           STOP RUN.

       END PROGRAM PROGRAMA04.
