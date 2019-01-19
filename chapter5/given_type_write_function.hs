i :: a -> a
i x = x

c :: a -> b -> a
c x y = x 

c'' :: b -> a -> b
c'' = c 

c' :: a -> b -> b
c' _ y = y 

r :: [a] -> [a]
r xs = reverse xs 

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = bToC $ aToB a

a :: (a -> c) -> a -> a
a aToC x = aToC x  

a' :: (a -> b) -> a -> b
a' aToB a = aToB a
