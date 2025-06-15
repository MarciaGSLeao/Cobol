      * Autor: Marcia Gameleira
      * Data: 08/06/2025
      * Objetivo: Usando o comando STRING.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM00009.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       INPUT-OUTPUT SECTION.


       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-PRIMEIRO-NOME         PIC X(15)    VALUE   SPACES.
       01  WS-SEGUNDO-NOME          PIC X(15)    VALUE   SPACES.
       01  WS-NOME-COMPLETO         PIC X(30)    VALUE   SPACES.
       PROCEDURE DIVISION.
       0001-ROTINA-PRINCIPAL SECTION.

           DISPLAY 'PRIMEIRO NOME: '
           ACCEPT WS-PRIMEIRO-NOME

           DISPLAY 'SEGUNDO NOME: '
           ACCEPT WS-SEGUNDO-NOME

      *     Usando o STRING: Faz concatenação de strings.
           STRING WS-PRIMEIRO-NOME WS-SEGUNDO-NOME
               DELIMITED BY SIZE
                   INTO WS-NOME-COMPLETO
           END-STRING

           DISPLAY WS-NOME-COMPLETO

           STOP RUN.

       END PROGRAM PGM00009.
