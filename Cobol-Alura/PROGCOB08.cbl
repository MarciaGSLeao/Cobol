       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      ******************************************************************
      * AUTHOR: MARCIA GAMELEIRA
      * OBJETIVO: COMANDO EVALUATE.
      * DATA: 28/10/2023
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-NOTA1        PIC 9(3)V99     VALUES ZEROS.
       01 WRK-NOTA2        PIC 9(3)V99     VALUES ZEROS.
       01 WRK-MEDIA        PIC 9(4)V99     VALUES ZEROS.
       01 WRK-MEDIA-FORM   PIC ZZ9,99      VALUES ZEROS.

      ******************************************************************
       PROCEDURE DIVISION.

           ACCEPT WRK-NOTA1  FROM CONSOLE.
           ACCEPT WRK-NOTA2  FROM CONSOLE.
            COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
             MOVE WRK-MEDIA TO WRK-MEDIA-FORM.
             DISPLAY "MEDIA: " WRK-MEDIA-FORM.

             EVALUATE TRUE
              WHEN WRK-MEDIA >= 6 AND <= 10
               DISPLAY "APROVADO"
              WHEN WRK-MEDIA >= 4 AND < 6
               DISPLAY "RECUPERACAO"
              WHEN OTHER
               DISPLAY "REPROVADO"
             END-EVALUATE.

           STOP RUN.
       END PROGRAM PROGCOB08.
