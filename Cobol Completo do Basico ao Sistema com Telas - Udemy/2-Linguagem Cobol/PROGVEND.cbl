       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGVEND.
      *-----------------------------------------------------------------
      *== AUTOR: MARCIA GAMELEIRA
      *== OBJETIVO: CALCULANDO VALOR TOTAL DE UMA COMPRA.
      *== DATA: 04/11/2023
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
       77 WRK-RESPOSTA              PIC X(1)        VALUE SPACES.
       77 WRK-NOME-PROD             PIC X(30)       VALUE SPACES.
       77 WRK-QTD-PROD              PIC 9(6)        VALUE ZEROS.
       77 WRK-PRECO-PROD            PIC 9(6)        VALUE ZEROS.
       77 WRK-PRECO-ITEM            PIC 9(8)        VALUE ZEROS.
       77 WRK-PRECO-ITEM-FORM       PIC ZZZ.ZZ9,99  VALUE ZEROS.
       77 WRK-PRECO-TOTAL           PIC 9(8)        VALUE ZEROS.
       77 WRK-PRECO-TOTAL-FORM      PIC ZZZ.ZZ9,99  VALUE ZEROS.
      *=================================================================
       PROCEDURE DIVISION.
       0100-PRINCIPAL              SECTION.
           PERFORM 0200-INICIALIZACAO
           IF WRK-RESPOSTA EQUAL "S"
               PERFORM 0201-RECEBIMENTO-DE-DADOS
               PERFORM 0300-PROCESSAMENTO
           ELSE
               PERFORM 0400-MOSTRA-DADOS
           END-IF
           STOP RUN
       .
       0200-INICIALIZACAO          SECTION.
           DISPLAY "INSERIR NOVO PRODUTO? "
               ACCEPT WRK-RESPOSTA
       .
       0201-RECEBIMENTO-DE-DADOS   SECTION.
           DISPLAY "INFORME O NOME DO PRODUTO: "
               ACCEPT WRK-NOME-PROD
           DISPLAY "INFORME A QUANTIDADE: "
               ACCEPT WRK-QTD-PROD
           DISPLAY "INFORME O PRECO DO PRODUTO: "
               ACCEPT WRK-PRECO-PROD
       .
       0300-PROCESSAMENTO          SECTION.
           COMPUTE WRK-PRECO-ITEM = WRK-QTD-PROD * WRK-PRECO-PROD
            MOVE WRK-PRECO-ITEM TO WRK-PRECO-ITEM-FORM
            DISPLAY "TOTAL: " WRK-PRECO-ITEM-FORM
            COMPUTE WRK-PRECO-TOTAL = WRK-PRECO-TOTAL + WRK-PRECO-ITEM
            PERFORM 0100-PRINCIPAL
       .
       0400-MOSTRA-DADOS           SECTION.
           MOVE WRK-PRECO-TOTAL TO WRK-PRECO-TOTAL-FORM
           DISPLAY "TOTAL DA VENDA: " WRK-PRECO-TOTAL-FORM
       .
       END PROGRAM PROGVEND.
