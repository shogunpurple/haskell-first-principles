data Rocks =
  Rocks String deriving (Eq, Show)

data Yeah =
  Yeah Bool deriving (Eq, Show)

data Papu =
  Papu Rocks Yeah deriving (Eq, Show)


-- Ex1
-- Yes, but won't compile because Papu takes Rocks and Yeah types
phew = Papu "chases" True

-- Ex2
-- Yes
truth = Papu (Rocks "chomskydoz") (Yeah True)

-- Ex3
-- Yes, because Papu has an instance for Eq
equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

-- Ex4
-- No, because Papu doesn't have an instance for Ord
comparePapus :: Papu -> Papu -> Bool
comparePapus p p' = p > p'
