       identification division.
       program-id. calculator.

       data division.
       working-storage section.
       01 num1 pic 9(9).
       01 num2 pic 9(9).
       01 symbol pic x.
       01 result pic 9(15)v9(2).

       procedure division.
       display "Enter first number: " with no advancing.
       accept num1.
       display "Enter symbol: " with no advancing.
       accept symbol.
       display "Enter second number: " with no advancing.
       accept num2.
       if symbol = "+"
           add num1 to num2 giving result.
       if symbol = "-"
           subtract num1 from num2 giving result.
       if symbol = "*"
           multiply num1 by num2 giving result.
       if symbol = "/"
           divide num1 by num2 giving result.
       display num1, "  ", symbol, "  ", num2, " = ", result.

       stop run.
           