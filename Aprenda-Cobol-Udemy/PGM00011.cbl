      * Autor: Marcia Gameleira
      * Data: 08/06/2025
      * Objetivo: Usando o comando ON SIZE ERROR.

      *                                        IDENTIFICATION DIVISION
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM00011.

      *                                           ENVIRONMENT DIVISION
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       INPUT-OUTPUT SECTION.

      *                                                  DATA DIVISION
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-NUM-1                   PIC 9(02) VALUE 10.
       01  WS-NUM-2                   PIC 9(02) VALUE 20.
       01  WS-RESULT                  PIC 9(02) VALUE ZEROS.

      *                                             PROCEDURE DIVISION
       PROCEDURE DIVISION.
       0001-ROTINA-PRINCIPAL SECTION.

            PERFORM 0002-CALCULA.
            PERFORM 9999-FIM.

       0002-CALCULA SECTION.

            COMPUTE WS-RESULT = WS-NUM-1 * WS-NUM-2
                     ON SIZE ERROR
                        PERFORM 0003-ERRO
            END-COMPUTE

            DISPLAY 'RESULTADO: ' WS-RESULT
       .
       0003-ERRO SECTION.

            DISPLAY 'ERRO NO CALCULO. ESTOURO DE BYTES'
            PERFORM 9999-FIM
       .
       9999-FIM SECTION.

            DISPLAY 'FIM DO PROCESSAMENTO'

            STOP RUN.

       END PROGRAM PGM00011.
