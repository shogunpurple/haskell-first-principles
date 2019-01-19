-- DETERMINE THE TYPE
-- 1. All function applications return a value. Determine the value
-- returned by these function applications and the type of that
-- value.
-- a) (* 9) 6 
-- Num a => a
-- 54
-- b) head [(0,"doge"),(1,"kitteh")]
-- Num a => (a, [Char]) 
-- (0, "doge")
-- c) head [(0 :: Integer ,"doge"),(1,"kitteh")]
-- (Integer, [Char])
-- (0, "doge")
-- d) if False then True else False
-- Bool
-- False
-- e) length [1, 2, 3, 4, 5]
-- Int
-- 5
-- f) (length [1, 2, 3, 4]) > (length "TACOCAT")
-- Bool
-- False

-- 2. Given
-- x = 5
-- y = x + 5
-- w = y * 10
-- What is the type of w?
-- Num a => a

-- 3. Given
-- x = 5
-- y = x + 5
-- z y = y * 10
-- What is the type of z?
-- Num a => a -> a

-- 4. Given
-- 150
-- x = 5
-- y = x + 5
-- f = 4 / y
-- What is the type of f?
-- Fractional a => a

-- 5. Given
-- x = "Julie"
-- y = " <3 "
-- z = "Haskell"
-- f = x ++ y ++ z
-- What is the type of f?
-- [Char] or String