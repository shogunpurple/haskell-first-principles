-- Mood Swing
-- Mood
-- Blah, Woot
-- Should return a Mood

data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Blah = Woot 
changeMood _ = Blah

awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]

-- ex1
-- length :: [a] -> Int
--

-- ex2
-- a) length [1, 2, 3, 4, 5]
-- 5
-- b) length [(1, 2), (2, 3), (3, 4)]
-- 3
-- c) length allAwesome
-- 2
-- d) length (concat allAwesome)
-- 5

-- Ex3
-- second one - / operates on fractional typeclass instances. Can't use Int 

-- Ex4
-- 6 `div` length [1, 2, 3]

-- Ex5
-- Bool

-- Ex6
-- False

-- Ex7
-- length allAwesome == 2 = True 
-- length [1, 'a', 3, 'b'] = won't work
-- length allAwesome + length awesome = 5
-- (8 == 8) && ('b' < 'a') = False
-- (8 == 8) && 9 = Won't work

-- Ex8
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = reverse x == x 

-- Ex9
myAbs :: Integer -> Integer
myAbs x = if x < 0 then x * (-1) else x

-- Ex10
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y)) 
