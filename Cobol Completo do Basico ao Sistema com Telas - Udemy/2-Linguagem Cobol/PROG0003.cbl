       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA03.
      *==========================================================
      *== AUTOR: MARCIA GAMELEIRA
      *== OBJETIVO: VARIÁVEL COM SINAL.
      *== DATA: 08/10/2023
      *== OBSERVACOES:
      *==========================================================

       ENVIRONMENT DIVISION.
       CONFIGURATION   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * Abaixo encontra-se o espoço para declaração de variáveis.
       77 WRK-VALOR1            PIC  9(10)V99        VALUES ZEROS.
       77 WRK-VALOR2            PIC  9(10)V99        VALUES ZEROS.
       77 WRK-RESULTADO         PIC S9(15)V99        VALUES ZEROS.
       77 WRK-RESULTADO-FORM    PIC -ZZZ.ZZ9,99      VALUES ZEROS.

       PROCEDURE DIVISION.
       0100-RECEBE     SECTION.
           DISPLAY "DIGITE O VALOR 1: "
               ACCEPT WRK-VALOR1.
           DISPLAY "DIGITE O VALOR 2: "
               ACCEPT WRK-VALOR2.
           COMPUTE WRK-RESULTADO = WRK-VALOR1 - WRK-VALOR2.
            MOVE WRK-RESULTADO TO WRK-RESULTADO-FORM.

       0200-EXIBE      SECTION.
           DISPLAY "RESULTADO: " WRK-RESULTADO-FORM.

       0300-FINALIZA    SECTION.
           STOP RUN.

       END PROGRAM PROGRAMA03.
