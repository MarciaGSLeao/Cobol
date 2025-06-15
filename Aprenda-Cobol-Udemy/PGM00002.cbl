      * Autor: Marcia Gameleira
      * Data: 03/06/2025
      * Objetivo: Trabalhando com Strings.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM00002.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       INPUT-OUTPUT SECTION.


       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WS-CONTEUDO                    PIC X(50)  VALUE SPACES.
       77  WS-TEXTO                       PIC X(50)  VALUE SPACES.

       01  WS-REGISTRO                    PIC X(1000) VALUES SPACES.

       01 WS-DADOS-ARQ-E.
           03  NOME      PIC X(30)     VALUES SPACES.
           03  IDADE     PIC 9(03)     VALUES ZEROS.
           03  DT-NASC   PIC X(08)     VALUES SPACES.


       PROCEDURE DIVISION.
       0001-ROTINA-PRINCIPAL SECTION.

      *    Forma 1

           INITIALIZE WS-CONTEUDO
                      WS-TEXTO

           DISPLAY 'WS-CONTEUDO ANTES...: ' WS-CONTEUDO

           STRING
               'MARCIA ARAUJO GAMELEIRA'
               ':'
               '22/07/1990'
               DELIMITED BY SIZE
               INTO WS-CONTEUDO
           END-STRING

           DISPLAY 'WS-CONTEUDO DEPOIS..: ' WS-CONTEUDO

      *    Forma 2

           INITIALIZE WS-CONTEUDO
                      WS-TEXTO

           MOVE 'FELIPE ESTA JOGANDO MINECRAFT NA SALA' TO WS-TEXTO.

           DISPLAY 'WS-CONTEUDO ANTES...: ' WS-CONTEUDO
           STRING
               WS-TEXTO(1:6)
               ' '
               WS-TEXTO(34:4)
               DELIMITED BY SIZE
               INTO WS-CONTEUDO
           END-STRING
           DISPLAY 'WS-CONTEUDO DEPOIS..: ' WS-CONTEUDO

           DISPLAY '---------- FORMA 3 UNSTRING ----------'
      *    Forma 3

           INITIALIZE WS-CONTEUDO
                      WS-TEXTO

           MOVE 'FELIPE;9;25082015' TO WS-REGISTRO.

           DISPLAY 'WS-CONTEUDO ANTES...: ' WS-CONTEUDO
           UNSTRING
               WS-REGISTRO
               DELIMITED BY ';'
               INTO NOME
                    IDADE
                    DT-NASC
           END-UNSTRING
           DISPLAY 'WS-CONTEUDO DEPOIS..: ' WS-DADOS-ARQ-E

           GOBACK.

       END PROGRAM PGM00002.
