      ******************************************************************
      * AUTHOR: MARCIA GAMELEIRA
      * OBJETIVO: PROJETO CRUD
      * DATA: 10/12/2023
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM02002.
      ******************************************************************
       ENVIRONMENT DIVISION.

      ******************************************************************
       DATA           DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO         PIC X(1).
       77 WRK-TITULO        PIC X(50).
       77 WRK-MODULO        PIC X(50).

       SCREEN          SECTION.
       01 TELA.
           02 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(01) ERASE EOL
                  BACKGROUND-COLOR 5.
               10 LINE 01 COLUMN 40 PIC X(32)
                  BACKGROUND-COLOR 5
                  FROM  "SISTEMA DE CADASTRO DE CLIENTES" .
               10 LINE 02 COLUMN 01 PIC X(50) ERASE EOL
                  FROM WRK-MODULO.

       01 MENU.
           05 LINE 05 COLUMN 10 VALUE "1 - INCLUIR".
           05 LINE 06 COLUMN 10 VALUE "2 - CONSULTAR".
           05 LINE 07 COLUMN 10 VALUE "3 - ALTERAR".
           05 LINE 08 COLUMN 10 VALUE "4 - EXCLUIR".
           05 LINE 09 COLUMN 10 VALUE "5 - RELATORIO".
           05 LINE 10 COLUMN 10 VALUE "X - SAIR".
           05 LINE 12 COLUMN 10 VALUE "OPCAO: ".
           05 LINE 12 COLUMN 17 USING WRK-OPCAO.


      ******************************************************************
       PROCEDURE      DIVISION.
       0001-PRINCIPAL      SECTION.
           PERFORM 1000-INICIAR.
           PERFORM 1000-PROCESSAR.
           PERFORM 1000-FINALIZAR.
           STOP RUN.

       1000-INICIAR        SECTION.
           DISPLAY TELA.
           DISPLAY MENU.
           ACCEPT WRK-OPCAO AT 1217.

       1000-PROCESSAR      SECTION.
           EVALUATE WRK-OPCAO
               WHEN 1
                   PERFORM 5000-INCLUIR
               WHEN 2
                   DISPLAY "TESTANDO CONSULTA"
               WHEN 3
                   DISPLAY "TESTANDO ALTERAR"
               WHEN 4
                   DISPLAY "TESTANDO EXCLUSAO"
               WHEN 5
                   DISPLAY "TESTANDO RELATORIO"
           END-EVALUATE.

       1000-FINALIZAR      SECTION.

       5000-INCLUIR        SECTION.
           MOVE "MODULO DE INCLUSAO" TO WRK-MODULO.
           DISPLAY TELA.

       5000-CONSULTAR        SECTION.

       5000-ALTERAR        SECTION.

       5000-EXCLUIR        SECTION.

       5000-RELATORIO        SECTION.



       END PROGRAM PGM02002.
