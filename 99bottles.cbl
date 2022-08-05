       identification division.
       program-id. 99bottles.

       environment division.
       

       data division.
       working-storage section.
       01 bottles pic 99.

       procedure division.
           set bottles to 99.
           perform bottle-statement until bottles is equal to 0.
           stop run.

       bottle-statement.
           display bottles with no advancing.
           if bottles is greater than 1
               display " bottles of beer on the wall!"
           else
               display " bottle of beer on the wall!".
           display bottles with no advancing .
           if bottles  is greater than 1
               display " bottles of beer!"
           else 
               display " bottle of beer!".

           display "take one down!".
           display "pass it around!".
           subtract 1 from bottles.
           if bottles is greater than 0
               display bottles with no advancing 
               if bottles is greater than 1
                   display " bottles of beer on the wall!"
               else
                   display " bottle of beer on the wall!"
           else 
               display "no more bottles of beer on the wall!".

           display " ".

       end program 99bottles.
       