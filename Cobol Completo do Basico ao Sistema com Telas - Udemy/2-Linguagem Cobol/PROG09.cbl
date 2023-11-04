       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG09.
      *-----------------------------------------------------------------
      *== AUTOR: MARCIA GAMELEIRA
      *== OBJETIVO: OPERADORES LÓGICOS - USANDO IF COM EVALUATE.
      *== DATA: 03/11/2023
      *== OBSERVACOES:
      *-----------------------------------------------------------------

      *=================================================================
       ENVIRONMENT DIVISION.
       CONFIGURATION   SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *=================================================================
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-UF           PIC X(2)        VALUE SPACES.
       77 WRK-PRECO        PIC 9(6)V99     VALUE ZEROS.
       77 WRK-FRETE        PIC 9(6)V99     VALUE ZEROS.
       77 WRK-FRETE-FORM   PIC Z.ZZ9,99    VALUE ZEROS.

      *=================================================================
       PROCEDURE DIVISION.
       0001-REC-DADOS      SECTION.
           DISPLAY "INFORME O PRECO: ".
           ACCEPT WRK-PRECO.

       0002-CALCULO        SECTION.
           DISPLAY "INFORME A UF DE DESTINO: ".
           ACCEPT WRK-UF.

           IF WRK-UF = "SP" OR WRK-UF = "RJ" OR WRK-UF = "ES"
               EVALUATE WRK-UF
                   WHEN "SP"
                       COMPUTE WRK-FRETE = WRK-PRECO * 0,1
                       MOVE WRK-FRETE TO WRK-FRETE-FORM
                       DISPLAY "VALOR DO FRETE: R$" WRK-FRETE-FORM
                   WHEN "RJ"
                       COMPUTE WRK-FRETE = WRK-PRECO * 0,15
                       MOVE WRK-FRETE TO WRK-FRETE-FORM
                       DISPLAY "VALOR DO FRETE: R$" WRK-FRETE-FORM
                   WHEN "CE"
                       COMPUTE WRK-FRETE = WRK-PRECO * 0,2
                       MOVE WRK-FRETE TO WRK-FRETE-FORM
                       DISPLAY "VALOR DO FRETE: R$" WRK-FRETE-FORM
           ELSE
               DISPLAY "UF NAO ABRANGIDA."
           END-IF.

       0003-FINALIZACAO    SECTION.
           STOP RUN.

       END PROGRAM PROG09.
