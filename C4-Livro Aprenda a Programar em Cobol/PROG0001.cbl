       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG0001.
      ******************************************************************
       ENVIRONMENT DIVISION.
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-MENSAGEM PIC X(20) VALUE SPACES.
       01  WS-NOME     PIC X(20) VALUE SPACES.
      ******************************************************************
       PROCEDURE DIVISION.
       PRIMEIRA-SECAO.
       PRIMEIRO-PARAGRAFO.
           MOVE 'COMO VAI MUNDO!' TO WS-MENSAGEM.
           DISPLAY WS-MENSAGEM.
           DISPLAY 'POR FAVOR, DIGITE SEU NOME: '.
           ACCEPT WS-NOME.
           DISPLAY 'PRAZER EM CONHECE-LO ' WS-NOME.
           MOVE 'TENHA UM OTIMO DIA!' TO WS-MENSAGEM.
           DISPLAY WS-MENSAGEM
            STOP RUN.
       END PROGRAM PROG0001.
