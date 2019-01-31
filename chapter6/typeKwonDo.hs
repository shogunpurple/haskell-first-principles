chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f x y = f x == y

-- Hint: use some arithmetic operation to
-- combine values of type 'b'. Pick one.
--The workhorse for converting from integral types is fromIntegral, which will convert from any Integral type into any Numeric type (which includes Int, Integer, Rational, and Double):
-- fromIntegral :: (Num b, Integral a) => a -> b
-- For example, given an Int value n, one does not simply take its square root by typing sqrt n, since sqrt can only be applied to Floating-point numbers. Instead, one must write sqrt (fromIntegral n) to explicitly convert n to a floating-point number. There are special cases for converting from Integers:
-- fromInteger :: Num a => Integer -> a
arith :: Num b => (a -> b) -> Integer -> a -> b
arith f n x = fromIntegral n + f x  
