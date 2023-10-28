       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      ******************************************************************
      * AUTHOR: MARCIA GAMELEIRA
      * OBJETIVO: COMANDO EVALUATE.
      *           EXEMPLO COM CÁLCULO DE FRETE.
      * DATA: 28/10/2023
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

      ******************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-NPROD        PIC X(30)       VALUES SPACE.
       01 WRK-PRICE        PIC 9(4)        VALUE ZEROS.
       01 WRK-UF           PIC XX          VALUES SPACES.
       01 WRK-PFRETE       PIC 9(4)        VALUES ZEROS.
       01 WRK-PFRETEFORM   PIC ZZZ,99      VALUES ZEROS.
       01 WRK-VTOTAL       PIC 9(4)        VALUES ZEROS.
       01 WRK-VTOTALFORM   PIC Z.ZZZ,99    VALUES ZEROS.

      ******************************************************************
       PROCEDURE DIVISION.
           DISPLAY "PRODUTO: ".
           ACCEPT WRK-NPROD FROM CONSOLE.
           DISPLAY "PRECO: ".
           ACCEPT WRK-PRICE FROM CONSOLE.
           DISPLAY "UF: ".
           ACCEPT WRK-UF FROM CONSOLE.

           EVALUATE TRUE
            WHEN WRK-UF EQUALS "SP"
             COMPUTE WRK-PFRETE = WRK-PRICE * 0,1
              MOVE WRK-PFRETE TO WRK-PFRETEFORM
             COMPUTE WRK-VTOTAL = WRK-PRICE + WRK-PFRETE
              MOVE WRK-VTOTAL TO WRK-VTOTALFORM
               DISPLAY "VALOR DO FRETE: " WRK-PFRETEFORM
               DISPLAY "VALOR TOTAL: " WRK-VTOTALFORM
            WHEN WRK-UF EQUALS "RJ"
             COMPUTE WRK-PFRETE = WRK-PRICE * 0,15
              MOVE WRK-PFRETE TO WRK-PFRETEFORM
             COMPUTE WRK-VTOTAL = WRK-PRICE + WRK-PFRETE
              MOVE WRK-VTOTAL TO WRK-VTOTALFORM
               DISPLAY "VALOR DO FRETE: " WRK-PFRETEFORM
               DISPLAY "VALOR TOTAL: " WRK-VTOTALFORM
            WHEN WRK-UF EQUALS "MG"
             COMPUTE WRK-PFRETE = WRK-PRICE * 0,20
              MOVE WRK-PFRETE TO WRK-PFRETEFORM
             COMPUTE WRK-VTOTAL = WRK-PRICE + WRK-PFRETE
              MOVE WRK-VTOTAL TO WRK-VTOTALFORM
               DISPLAY "VALOR DO FRETE: " WRK-PFRETEFORM
               DISPLAY "VALOR TOTAL: " WRK-VTOTALFORM
            WHEN OTHER
             DISPLAY "NAO FAZEMOS FRETE PARA ESSA REGIAO."

           END-EVALUATE.

           STOP RUN.
       END PROGRAM PROGCOB08.
