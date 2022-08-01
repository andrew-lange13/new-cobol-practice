       IDENTIFICATION DIVISION.
       PROGRAM-ID. GUESS-A-NUMBER.

       DATA DIVISION.
       LOCAL-STORAGE SECTION.
       01 NUM PIC 9(8).
       01 RANDOM-NUM PIC 99.
       01 GUESS PIC 99.

       PROCEDURE DIVISION.
           ACCEPT NUM FROM TIME
           COMPUTE RANDOM-NUM =
               FUNCTION REM(FUNCTION RANDOM(NUM) * 1000, 10) + 1

           DISPLAY "Guess a number between 1 and 10:"

           PERFORM FOREVER
               ACCEPT GUESS

               IF GUESS > RANDOM-NUM
                   DISPLAY "Your guess was too high."
               ELSE IF GUESS < RANDOM-NUM
                   DISPLAY "Your guess was too low."
               ELSE
                   DISPLAY "Good guess!"
                   EXIT PERFORM
               END-PERFORM

               STOP RUN.
