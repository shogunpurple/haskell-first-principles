--We’re going to give you two types and their implementations. Then
--we’re going to ask you if you can substitute the second type for the
--first. You can test this by typing the first declaration and its type into
--a file and editing in the new one, loading to see if it fails. Don’t guess,
--test all your answers!

import Data.List

-- Ex2
-- This will not work because 1.0 implies that this is a Float or a Double which is more specific than a Num. 
{-f :: Num a => a-}
{-f = 1.0-}

-- Ex3
-- Yup, Fractional is the most specific typeclass for a Float or Double
{-f :: Float-}
f :: Fractional a => a
f = 1.0

-- Ex4
-- Yes, RealFrac is a Fractional 
{-g :: Float-}
g :: RealFrac a => a
g = 1.0

-- Ex5
-- Yes, x just has to have an instance of Ord
{-freud :: a -> a-}
freud :: Ord a => a -> a
freud x = x

-- Ex6
-- Yep, x just needs to be an Int
{-freud' :: a -> a-}
freud' :: Int -> Int
freud' x = x

-- Ex7
myX = 1 :: Int

-- No, because the regular type is more specific than the parametrically polymorphic a
{-sigmund :: a -> a-}
sigmund :: Int -> Int
sigmund x = myX

-- Ex8
myY = 1 :: Int

-- No, because you could pass a non-int so Num isn't specific enough
{-sigmund' :: Num a => a -> a-}
sigmund' :: Int -> Int
sigmund' x = myY

-- Ex9
-- Yes, will just add an [Int] constraint instead of Ord
jung :: [Int] -> Int
{-jung :: Ord a => [a] -> a-}
jung xs = head (sort xs)

-- Ex10
-- Yes, because we will be constrained to Ord and [Char] has an instance for Ord.
{-young :: [Char] -> Char-}
young :: Ord a => [a] -> a
young xs = head (sort xs)

-- Ex11
-- No, because mySort returns a [Char] and Ord a is too generic a return type
mySort :: [Char] -> [Char]
mySort = sort

{-signifier :: Ord a => [a] -> a-}
signifier :: [Char] -> Char
signifier xs = head (mySort xs)
