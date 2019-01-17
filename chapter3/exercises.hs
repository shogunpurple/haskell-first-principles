thirdLetter :: String -> Char
thirdLetter s = s !! 2

reverse' :: String -> String
reverse' s = drop 3 s ++ take 1 (drop 2 s) ++ take 1 (drop 1 s) ++ take 1 s

fibonnacci :: Integer -> [Integer]
fibonnacci 0 = [0]
fibonnacci 1 = [1] 
fibonnacci n = fibonnacci (n-1) : fibonnacci (n-2)


