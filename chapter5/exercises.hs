-- a) not
-- c
-- b) length
-- d
-- c) concat
-- b
-- d) head
-- a
-- e) (<)
-- e


-- Type Arguments
-- a) Char -> Char -> Char
-- c) Char
-- d) Num b => b
-- c) Double
-- a) [Char]
-- e) Eq b => b -> [Char]
-- b) Num a => a
-- f) (Num a, Ord a) => a
-- c) Integer


-- Exercises: Parametricity
{-1. Given the type a -> a, which is the type for id, attempt to make-}
{-a function that terminates successfully that does something-}
{-other than returning the same value. This is impossible, but-}
{-you should try it anyway.-}


{-2. We can get a more comfortable appreciation of parametricity-}
{-by looking at a -> a -> a. This hypothetical function a -> a ->-}
{-a has two–and only two–implementations. Write both possi--}
{-ble versions of a -> a -> a. After doing so, try to violate the-}
{-constraints of parametrically polymorphic values we outlined-}
{-above.-}
f1 :: a -> a -> a
f1 a b = a
f1 a b = b 

{-3. Implement a -> b -> b. How many implementations can it-}
{-have? Does the behavior change when the types of a and b-}
{-change?-}


-- Type Inference
f :: Num a => a -> a -> a
f x y = x + y + 3

-- 1. -- Type signature of general function
-- (++) :: [a] -> [a] -> [a]
-- How might that change when we apply
-- it to the following value?
myConcat x = x ++ " yo"
-- will change to [Char] -> [Char]

-- 2. -- General function
{-(*) :: Num a => a -> a -> a -}
-- Applied to a value
myMult x = (x / 3) * 5
-- will change to Fractional a => a -> a

-- 3. take :: Int -> [a] -> [a]
myTake x = take x "hey you"
-- will change to Int -> [Char]

-- 4. (>) :: Ord a => a -> a -> Bool
myCom x = x > (length [1..10])
-- will change to Int -> Bool

-- 5. (<) :: Ord a => a -> a -> Bool
myAlph x = x < 'z'
-- will change to Char -> Bool
