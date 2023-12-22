       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG0006.
      *==========================================================
      *== AUTOR: MARCIA GAMELEIRA
      *== OBJETIVO: ESTRUTURA DE DECISAO (CLÁUSULA IF).
      *== DATA: 02/11/2023
      *== OBSERVACOES:
      *==========================================================

       ENVIRONMENT DIVISION.
       CONFIGURATION   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE             SECTION.
       77 WRK-NOTA1        PIC 9(2)V99     VALUE ZEROS.
       77 WRK-NOTA2        PIC 9(2)V99     VALUE ZEROS.
       77 WRK-MEDIA        PIC 9(2)V99     VALUE ZEROS.
       77 WRK-MEDIA-FORM   PIC Z9,99       VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-RECEBE-DADOS           SECTION.
           DISPLAY "INFORME A NOTA DO BIMESTRE 1: "
            ACCEPT WRK-NOTA1.
           DISPLAY "INFORME A NOTA DO BIMESTRE 2: "
            ACCEPT WRK-NOTA2.

       0002-CALCULA                SECTION.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2)/2.
           MOVE WRK-MEDIA TO WRK-MEDIA-FORM.

               IF WRK-MEDIA GREATER THAN OR EQUAL 7
                   DISPLAY "MEDIA: " WRK-MEDIA-FORM
                   DISPLAY "RESULTADO: APROVADO."
               ELSE
                   DISPLAY "MEDIA: " WRK-MEDIA-FORM
                   DISPLAY "RESULTADO: REPROVADO."
               END-IF.

       0003-FINALIZACAO            SECTION.
           STOP RUN.

       END PROGRAM PROG0006.
