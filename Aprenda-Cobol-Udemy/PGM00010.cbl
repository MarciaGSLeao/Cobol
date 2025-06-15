      * Autor: Marcia Gameleira
      * Data: 08/06/2025
      * Objetivo: Usando o comando UNSTRING.

      *                                        IDENTIFICATION DIVISION
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM00010.

      *                                           ENVIRONMENT DIVISION
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       INPUT-OUTPUT SECTION.

      *                                                  DATA DIVISION
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-NOME-COMPLETO         PIC X(30)    VALUE   SPACES.

       01  WS-NOME.
           03  WS-P-NOME            PIC X(10)    VALUE   SPACES.
           03  WS-M-NOME            PIC X(10)    VALUE   SPACES.
           03  WS-U-NOME            PIC X(10)    VALUE   SPACES.

       01  WS-CONTADORES.
           03  WS-PONTEIRO          PIC 9(02).
           03  WS-TOT-CAMPOS        PIC 9.
           03  WS-TAM-1             PIC 999.
           03  WS-TAM-2             PIC 999.
           03  WS-TAM-3             PIC 999.

      *                                             PROCEDURE DIVISION
       PROCEDURE DIVISION.
       0001-ROTINA-PRINCIPAL SECTION.

           MOVE 'MARCIA;ARAUJO;GAMELEIRA'     TO WS-NOME-COMPLETO
           MOVE 1                             TO WS-PONTEIRO

           UNSTRING
               WS-NOME-COMPLETO DELIMITED BY ';'
               INTO WS-P-NOME COUNT IN WS-TAM-1
                    WS-M-NOME COUNT IN WS-TAM-2
                    WS-U-NOME COUNT IN WS-TAM-3
               WITH POINTER WS-PONTEIRO
               TALLYING IN WS-TOT-CAMPOS
           END-UNSTRING

           DISPLAY 'NOME COMPLETO: ' WS-NOME-COMPLETO
           DISPLAY 'PRIMEIRO NOME: ' WS-P-NOME
           DISPLAY 'NOME DO MEIO: ' WS-M-NOME
           DISPLAY 'ULTIMO NOME: ' WS-U-NOME
           DISPLAY 'POSICAO PONTEIRO: ' WS-PONTEIRO
           DISPLAY 'TOTAL DE CAMPOS: ' WS-TOT-CAMPOS
           DISPLAY 'TAMANHO PRIMEIRO CAMPO: ' WS-TAM-1
           DISPLAY 'TAMANHO SEGUNDO CAMPO: '  WS-TAM-2
           DISPLAY 'TAMANHO TERCEIRO CAMPO: ' WS-TAM-3

           STOP RUN.

       END PROGRAM PGM00010.
