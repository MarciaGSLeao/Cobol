       IDENTIFICATION  DIVISION.
       PROGRAM-ID. PROGEXEM.
      ******************************************************************
       ENVIRONMENT     DIVISION.
       CONFIGURATION   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT    SECTION.
       FILE-CONTROL.
      * Neste par�grafo devemos definir cada um dos arquivos que o pro-
      * grama ir� utilizar, de forma individualizada. Usa-se a cl�usula
      * SELECT para cada arquivo que ser� usado pelo programa, tanto ar-
      * quivos de entrada como de sa�da.
      * Ex: SELECT <nome-arquivo> ASSIGN TO <disp-do-computador>.
      * <nome-arquivo>: identifica o arquivo internamente dentro do pro-
      *                 grama.
      * <disp-do-computador>: identifica o nome f�sico do arquivo no am-
      *                       biente operacio-nal. Se o programa vier a
      *                       ser executado no mainframe, este nome deve
      *                       estar associado aos comandos "JCL" na exe-
      *                       cu��o do programa (cart�o DD que identifi-
      *                       ca o nome f�sico do arquivo associado com
      *                       o nome l�gico).
      *
      *
      ******************************************************************
       DATA            DIVISION.
       FILE            SECTION.
       WORKING-STORAGE SECTION.
       01  WS-MENSAGEM PIC X(20) VALUE SPACES.
       01  WS-NOME     PIC X(20) VALUE SPACES.
      ******************************************************************
       PROCEDURE       DIVISION.
       0001-PRINCIPAL  SECTION.
            STOP RUN.
       END PROGRAM PROGEXEM.
