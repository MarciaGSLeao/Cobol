       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA02.
      *==========================================================
      *== AUTOR: MARCIA GAMELEIRA
      *== OBJETIVO: PVARIÁVEL COM CASA DECIMAL.
      *== DATA: 08/10/2023
      *== OBSERVACOES:
      *==========================================================

       ENVIRONMENT DIVISION.
       CONFIGURATION   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME     PIC X(30)    VALUE SPACES.
       77 WRK-IDADE    PIC 9(3)     VALUES ZEROS.
       77 WRK-SALARIO  PIC 9(5)V99  VALUES ZEROS.

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

       END PROGRAM PROGRAMA02.
