      * Autor: Marcia Gameleira
      * Data: 03/06/2025
      * Objetivo: Trabalhando com Arquivos.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM00003.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT ARQ-ENTRADA ASSIGN TO
           "C:\_Cursos\Cobol\Aprenda-Cobol-Udemy\ARQ-MODELO.txt"

       DATA DIVISION.
       FILE SECTION.

       FD  ARQ-ENTRADA
           RECORD   110.

       01  REG-ARQ-E.
           03  REG-NOME              PIC X(50).
           03  REG-DT-NASC           PIC X(10).
           03  REG-PROF              PIC X(30).
           03  REG-EST-CIVIL         PIC X(20).

       WORKING-STORAGE SECTION.



       PROCEDURE DIVISION.
       0001-ROTINA-PRINCIPAL SECTION.

           OPEN INPUT ARQ-ENTRADA

           CLOSE ARQ-ENTRADA


           STOP RUN.

       END PROGRAM PGM00003.
