module LetToWhere where

-- This exercise involves converting "let" statements into their equivalent "where" statements

mult3PlusY = x * 3 
    where x = 3

mult5 = x * 5
    where y = 10
          x = 10 * 5 + y 

divideByProduct = z / x + y 
    where x = 7
          y = negate x
          z = y

            