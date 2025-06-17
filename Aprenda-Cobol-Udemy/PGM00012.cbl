      * Autor: Marcia Gameleira
      * Data: 15/06/2025
      * Objetivo: LEITURA DE STRINGS

      *                                        IDENTIFICATION DIVISION
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM00012.
      *                                           ENVIRONMENT DIVISION
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       INPUT-OUTPUT SECTION.

      *                                                  DATA DIVISION
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WS-TM-1                         PIC 99.
       77  WS-TM-2                         PIC 99.
       COPY 'PGMK0012'.
      *                                             PROCEDURE DIVISION
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE 'MARCIA'                   TO WS-PRIMEIRO-NOME
            MOVE 'GAMELEIRA'                TO WS-SEGUNDO-NOME
            MOVE '5561998283032'            TO WS-TELEFONE
            MOVE 'RUA DEZ, 03'              TO WS-RUA
            MOVE 'AGUAS CLARAS'             TO WS-BAIRRO
            MOVE 'BRASILIA'                 TO WS-CIDADE
            MOVE 'DF'                       TO WS-UF
            MOVE '71256940'                 TO WS-CEP
            MOVE 'BRASILEIRA'               TO WS-NACIONALIDADE
            MOVE 'ENGENHEIRA DE SOFTWARE'   TO WS-PROFISSAO

            MOVE ZEROS                      TO WS-TM-1
            INSPECT FUNCTION REVERSE(WS-PRIMEIRO-NOME)
                    TALLYING WS-TM-1 FOR LEADING ' '
            DISPLAY 'NOME COMPLETO: ' WS-PRIMEIRO-NOME
            (1:(FUNCTION LENGTH(WS-PRIMEIRO-NOME) - WS-TM-1))
                                      ' '
                                      WS-SEGUNDO-NOME

            DISPLAY 'TELEFONE.....: +'  WS-PAIS ' '
                                    '(' WS-DDD ')'
                                    ' '
                                    WS-PREFIXO
                                    '-'
                                    WS-SUFIXO

            MOVE ZEROS                      TO WS-TM-1
            MOVE ZEROS                      TO WS-TM-2
            INSPECT FUNCTION REVERSE(WS-RUA)
                    TALLYING WS-TM-1 FOR LEADING ' '
            INSPECT FUNCTION REVERSE(WS-BAIRRO)
                    TALLYING WS-TM-2 FOR LEADING ' '
            DISPLAY 'ENDERECO.....: ' WS-RUA
                  (1:(FUNCTION LENGTH(WS-RUA) - WS-TM-1))
                                     ' - '
                                     WS-BAIRRO
                 (1:(FUNCTION LENGTH(WS-BAIRRO) - WS-TM-2))
                FUNCTION CONCATENATE(' - CEP: '
                                     WS-CEP-1
                                     '-'
                                     WS-CEP-1
                                     )
            DISPLAY 'NACIONALIDADE: ' WS-NACIONALIDADE
            DISPLAY 'PROFISSAO....: ' WS-PROFISSAO

            STOP RUN.

       END PROGRAM PGM00012.
