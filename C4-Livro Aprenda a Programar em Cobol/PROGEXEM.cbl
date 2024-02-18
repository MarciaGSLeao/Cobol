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
      * Neste parágrafo devemos definir cada um dos arquivos que o pro-
      * grama irá utilizar, de forma individualizada. Usa-se a cláusula
      * SELECT para cada arquivo que será usado pelo programa, tanto ar-
      * quivos de entrada como de saída.
      * Ex: SELECT <nome-arquivo> ASSIGN TO <disp-do-computador>.
      * <nome-arquivo>: nome lógico do arquivo. Identifica o arquivo in-
      *                 ternamente dentro do programa.Se o programa vier
      *                 a ser executado no mainframe, este nome deve
      *                 estar associado aos comandos "JCL" na execução
      *                 do programa (cartão DD que identifica o nome
      *                 físico do arquivo associado com o nome lógico).
      *
      * <disp-do-computador>: varia conforme o computador. Se no mainfra-
      *                       me, usamos um formato composto por 3 seg-
      *                       mentos separados por hífen.
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
