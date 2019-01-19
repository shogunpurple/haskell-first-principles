fstString :: String -> String
fstString x = x ++ " in the rain"

sndString :: String -> String
sndString x = x ++ " over the rainbow"

sing :: String
sing = if (x > y) then fstString x else sndString y
                    where x = "Singin"
                          y = "Somewhere"

main :: IO ()
main = do
  print $ 1 + 2
  putStrLn "10" 
  print $ negate (-1)
  print $ (+) 0 blah
    where blah = negate 1
