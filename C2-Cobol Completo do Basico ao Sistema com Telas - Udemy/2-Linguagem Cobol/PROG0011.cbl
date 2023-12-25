       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG0011.
      *-----------------------------------------------------------------
      *== AUTOR: MARCIA GAMELEIRA
      *== OBJETIVO: TRABALHANDO COM CLAUSULA REDEFINES.
      *== DATA: 24/12/2023
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
       01 WRK-DATA         PIC 9(6)    VALUES ZEROS.
       01 FILLER           REDEFINES WRK-DATA.
           05 WRK-ANO      PIC 9(2).
           05 WRK-MES      PIC 9(2).
           05 WRK-DIA      PIC 9(2).

       01 WRK-NUM-17       PIC 9(15)V99.
       01 WRK-ALF-17       REDEFINES WRK-NUM-17
                           PIC X(17).

       01 TABELA-DE-MESES.
           05 FILLER   PIC X(9) VALUE 'JANEIRO'.
           05 FILLER   PIC X(9) VALUE 'FEVEREIRO'.
           05 FILLER   PIC X(9) VALUE 'MARCO'.
           05 FILLER   PIC X(9) VALUE 'ABRIL'.
           05 FILLER   PIC X(9) VALUE 'MAIO'.
           05 FILLER   PIC X(9) VALUE 'JUNHO'.
           05 FILLER   PIC X(9) VALUE 'JULHO'.
           05 FILLER   PIC X(9) VALUE 'AGOSTO'.
           05 FILLER   PIC X(9) VALUE 'SETEMBRO'.
           05 FILLER   PIC X(9) VALUE 'OUTUBRO'.
           05 FILLER   PIC X(9) VALUE 'NOVEMBRO'.
           05 FILLER   PIC X(9) VALUE 'DEZEMBRO'.

       01 TAB-MESES-R REDEFINES TABELA-DE-MESES OCCURS 12 TIMES.
           05 MES PIC X(9).


      *=================================================================
       PROCEDURE DIVISION.
       0001-PRINCIPAL              SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           STOP RUN.

       0100-INICIALIZAR            SECTION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.

       0200-PROCESSAR              SECTION.
           DISPLAY WRK-DIA '/' MES(WRK-MES) '/' WRK-ANO.

       0300-FINALIZAR              SECTION.

       END PROGRAM PROG0011.
