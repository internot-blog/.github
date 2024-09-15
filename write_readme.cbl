       IDENTIFICATION DIVISION.
       PROGRAM-ID. WriteMarkdown.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT MarkdownFile ASSIGN TO "profile/README.md"
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  MarkdownFile.
       01  MarkdownRecord   PIC X(80).

       WORKING-STORAGE SECTION.
       01  MarkdownText     PIC X(80) VALUE
           "**Welcome to the [Internot...](https://internot.blog)**".

       PROCEDURE DIVISION.
           OPEN OUTPUT MarkdownFile
           MOVE MarkdownText TO MarkdownRecord
           WRITE MarkdownRecord
           CLOSE MarkdownFile
           STOP RUN.
