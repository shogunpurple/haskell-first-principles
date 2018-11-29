module Reverse where

rvrs :: String -> String
rvrs s = drop 3 s ++ take 1 (drop 2 s) ++ take 1 (drop 1 s) ++ take 1 s

main :: IO ()
main = print (rvrs "Hand")
