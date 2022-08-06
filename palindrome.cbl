       identification division.
       program-id. palindrome.

       environment division.
       

       data division.
       working-storage section.
       01 inp pic x(15).
       01 len pic 99.

       

       procedure division.
       display "Enter a word: " with no advancing. 
       accept inp.
       move zero to len.
       inspect function reverse(inp) tallying len for leading spaces.
       move function upper-case(inp) to inp.
      * display inp.

       compute len = function length(inp) - len.
      * display len.

       if inp(1:len) equal to function reverse(inp(1:len))
      * (1:len) is where the index starts and the length 
           display inp " is a palindrome."
       else    
           display inp "is not a palindrome.".

       end program palindrome.
       