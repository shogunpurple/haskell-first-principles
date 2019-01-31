-- Ex1
data TisAnInteger = TisAn Integer 
  deriving Show

instance Eq TisAnInteger where
  (==) (TisAn int) (TisAn int') = int == int'

-- Ex2
data TwoIntegers = Two Integer Integer
  deriving Show

instance Eq TwoIntegers where
  (==) (Two x y) (Two x' y') = x == x' && y == y' 

-- Ex3
data StringOrInt =
  TisAnInt Int
    | TisAString String
    deriving Show

instance Eq StringOrInt where
  (==) (TisAnInt x) (TisAString str) = show x == str
  (==) (TisAnInt x) (TisAnInt y) = x == y
  (==) (TisAString x) (TisAString y) = x == y
  (==) _ _ = False

-- Ex4
data Pair a =
  Pair a a

instance Eq a => Eq (Pair a) where
  (==) (Pair a b) (Pair a' b') = a == a' && b == b' 

-- Ex5
data Tuple a b =
  Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple a b) (Tuple a' b') = a == a' && b == b'

-- Ex6
data Which a =
  ThisOne a
    | ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThisOne a) (ThisOne a') = a == a'
  (==) (ThatOne a) (ThatOne a') = a == a'
  (==) _ _ = False 

-- Ex7
data EitherOr a b =
  Hello a
    | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello a) (Hello a') = a == a'
  (==) (Goodbye a) (Goodbye a') = a == a'
  (==) _ _ = False
