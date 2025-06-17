      * Autor: Marcia Gameleira
      * Data: 15/06/2025
      * Objetivo: TRABALHANDO COM ARQUIVOS

      *                                        IDENTIFICATION DIVISION
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM00013.
      *                                           ENVIRONMENT DIVISION
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ESTUDANTE ASSIGN TO
           'C:\_Cursos\Cobol\Aprenda-Cobol-Udemy\ARQ-MODELO.txt'
           ORGANIZATION IS SEQUENTIAL.

      *                                                  DATA DIVISION
       DATA DIVISION.

       FILE SECTION.
       FD  ESTUDANTE.
       01  REG-ESTUDANTE.
           03  CD-ESTUDANTE          PIC 9(05).
           03  NM-ESTUDANTE          PIC X(20).

       WORKING-STORAGE SECTION.
       01  WS-DADOS                  PIC X(25)  VALUES SPACES.
       01  WS-DADOS-R REDEFINES WS-DADOS.
           03  WS-CD-STUDENT         PIC 9(05).
           03  WS-NM-STUDENT         PIC X(20).

       77  WS-EOF              PIC X(01) VALUE SPACE.

      *                                             PROCEDURE DIVISION
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           OPEN INPUT ESTUDANTE.

           PERFORM UNTIL WS-EOF EQUAL 'F'
               READ ESTUDANTE INTO WS-DADOS
                   AT END MOVE 'F' TO WS-EOF
                       NOT AT END
                           DISPLAY WS-CD-STUDENT
                               ' - '
                               WS-NM-STUDENT
               END-READ
           END-PERFORM.

      *>      DISPLAY 'ARQUIVO LIDO'

           CLOSE ESTUDANTE.

           STOP RUN.

       END PROGRAM PGM00013.
