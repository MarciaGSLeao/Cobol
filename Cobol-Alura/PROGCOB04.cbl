       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB04.
      ******************************************************************
      * AUTHOR: MARCIA GAMELEIRA
      * OBJETIVO: RECEBER VALOR COM CASAS DECIMAIS E FORMATANDO.
      * DATA: 25/10/2023
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-NOME          PIC X(20)        VALUES SPACES.
       01 WRK-SALARIO       PIC 9(07)V99     VALUES ZEROS.
       01 WRK-SALARIO-FORM  PIC ZZZ.ZZ9,99   VALUES ZEROS.

      ******************************************************************
       PROCEDURE DIVISION.
      **** RECEBER DADOS
           ACCEPT WRK-NOME     FROM CONSOLE.
           ACCEPT WRK-SALARIO  FROM CONSOLE.
           MOVE WRK-SALARIO TO WRK-SALARIO-FORM.

      **** EXIBIR DADOS
           DISPLAY WRK-NOME.
           DISPLAY "R$" WRK-SALARIO-FORM.

           STOP RUN.
       END PROGRAM PROGCOB04.
