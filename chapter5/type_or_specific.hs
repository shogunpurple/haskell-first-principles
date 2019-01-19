-- TYPE VARIABLE, OR SPECIFIC TYPE CONSTRUCTOR?
-- 1. You will be shown a type declaration, and you should categorize
-- each type. The choices are a fully polymorphic type variable,
-- constrained polymorphic type variable, or concrete type con-
-- structor.
-- f :: Num a => a -> b -> Int -> Int
-- Here, the answer would be: constrained polymorphic (Num) ([0]),
-- fully polymorphic ([1]), and concrete ([2] and [3]).
-- 

-- 2. Categorize each component of the type signature as described
-- in the previous example.
-- f :: zed -> Zed -> Blah
-- fully polymorphic -> Concrete type constructor -> Concrete type constructor

-- 3. Categorize each component of the type signature
-- f :: Enum b => a -> b -> C
-- fully polymorphic -> constrained polymorphic -> Concrete type constructor

-- 4. Categorize each component of the type signature
-- f :: f -> g -> C
-- fully polymorphic -> fully polymorphic -> concrete type contructor
