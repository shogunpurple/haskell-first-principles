module LetToWhere where

-- This exercise involves converting "let" statements into their equivalent "where" statements

mult3plusY = x * 3 + y
  where x = 3
        y = 1000

mult5 = x * 5
  where y = 10
        x = 10 * 5 + y

divideByProduct = z / x + y 
            
  where 
    x = 7
    y = negate x
    z = y * 10
