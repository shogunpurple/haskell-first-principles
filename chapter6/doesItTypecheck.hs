-- Ex1
-- No, Person type doesn't derive Show 
data Person = Person Bool

print Person :: Person -> IO ()
print Person person = putStrLn (show person)

-- Ex2
-- No, need to derive Eq
data Mood = Blah
          | Woot deriving Show

settleDown x = if x == Woot then Blah else x

-- Ex3
-- 3. If you were able to get settleDown to typecheck:
-- a) What values are acceptable inputs to that function?
  -- Anything that has an instance of Eq
-- b) What will happen if you try to run settleDown 9? Why?
  -- Will blow up because theres no data constructor to put an Int into a Mood for comparison
-- c) What will happen if you try to run Blah > Woot? Why?
  -- Will fail because Mood doesn't derive Ord

-- Ex4
-- Yes
type Subject = String
type Verb = String
type Object = String

data Sentence = Sentence Subject Verb Object deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"
