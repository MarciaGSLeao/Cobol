      ******************************************************************
       IDENTIFICATION  DIVISION.
      ******************************************************************

       PROGRAM-ID. PROGEXEM.

      ******************************************************************
       ENVIRONMENT DIVISION.
      ******************************************************************

      *----------------------------------------------------------------*
       CONFIGURATION   SECTION.
      *----------------------------------------------------------------*

       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

      *----------------------------------------------------------------*
       INPUT-OUTPUT    SECTION.
      *----------------------------------------------------------------*

       FILE-CONTROL.
      * Neste par�grafo devemos definir cada um dos arquivos que o pro-
      * grama ir� utilizar, de forma individualizada. Usa-se a cl�usula
      * SELECT para cada arquivo que ser� usado pelo programa, tanto ar-
      * quivos de entrada como de sa�da.
      * Ex: SELECT <nome-arquivo> ASSIGN TO <disp-do-computador>.
      * <nome-arquivo>: nome l�gico do arquivo. Identifica o arquivo in-
      *                 ternamente dentro do programa.Se o programa vier
      *                 a ser executado no mainframe, este nome deve
      *                 estar associado aos comandos "JCL" na execu��o
      *                 do programa (cart�o DD que identifica o nome
      *                 f�sico do arquivo associado com o nome l�gico).
      *
      * <disp-do-computador>: varia conforme o computador. Se no mainfra-
      *                       me, usamos um formato composto por 3 seg-
      *                       mentos separados por h�fen.
      *
      ******************************************************************
       DATA DIVISION.
      ******************************************************************

      *----------------------------------------------------------------*
       FILE SECTION.
      *----------------------------------------------------------------*


      *----------------------------------------------------------------*
       WORKING-STORAGE SECTION.
      *----------------------------------------------------------------*

       01  WS-MENSAGEM PIC X(20) VALUE SPACES.
       01  WS-NOME     PIC X(20) VALUE SPACES.

      *----------------------------------------------------------------*
       LOCAL-STORAGE SECTION.
      *----------------------------------------------------------------*


      ******************************************************************
       PROCEDURE DIVISION.
      ******************************************************************
       0001-PRINCIPAL  SECTION.
            STOP RUN.
       END PROGRAM PROGEXEM.
