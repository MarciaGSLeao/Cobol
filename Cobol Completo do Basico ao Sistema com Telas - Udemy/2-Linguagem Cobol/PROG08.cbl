       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG08.
      *-----------------------------------------------------------------
      *== AUTOR: MARCIA GAMELEIRA
      *== OBJETIVO: COMANDO EVALUATE,
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
           DISPLAY "INFORME A UF DE DESTINO: ".
           ACCEPT WRK-UF.

       0002-CALCULO        SECTION.
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
               WHEN OTHER
                   DISPLAY "UF NAO ABRANGIDA."

           END-EVALUATE.

           STOP RUN.

       END PROGRAM PROG08.
