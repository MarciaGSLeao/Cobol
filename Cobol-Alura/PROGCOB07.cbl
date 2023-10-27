       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
      ******************************************************************
      * AUTHOR: MARCIA GAMELEIRA
      * OBJETIVO: ESTRUTURA DE DECISÃO IF/ELSE.
      * DATA: 26/10/2023
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-NOTA1        PIC 9(3)        VALUES 0.
       01 WRK-NOTA2        PIC 9(3)        VALUES 0.
       01 WRK-MEDIA        PIC 9(4)V99     VALUES 0.
       01 WRK-MEDIA-FORM   PIC ZZ9,99      VALUES ZEROS.

      ******************************************************************
       PROCEDURE DIVISION.

           ACCEPT WRK-NOTA1  FROM CONSOLE.
           ACCEPT WRK-NOTA2  FROM CONSOLE.

           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           MOVE WRK-MEDIA TO WRK-MEDIA-FORM.
           DISPLAY "MEDIA: " WRK-MEDIA-FORM.

           IF WRK-MEDIA >= 6
               DISPLAY "APROVADO"

           ELSE
               IF WRK-MEDIA >= 4
                   DISPLAY "RECUPERACAO"

           ELSE
               DISPLAY "REPROVADO"

           END-IF.

           STOP RUN.
       END PROGRAM PROGCOB07.
