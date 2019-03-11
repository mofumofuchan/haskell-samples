data Animal = Cat | Dog deriving (Show, Read, Eq)
type Age = Int

data Circle = Circle {x :: Float, y :: Float, r :: Float} deriving Show
area :: Circle -> Float
area (Circle _ _ r) = r ^ 2 * 3.14

say :: Animal -> String
say animal
  | animal == Cat = "meow"
  | animal == Dog = "bow-wow"

info :: Animal -> Age -> String
info animal age
  | animal == Cat = "This cat is " ++ (show age) ++ " years old."
  | animal == Dog = "This dog is " ++ (show age) ++ " years old."

main = do
  let c = Circle 1 2 3 
  print $ area c
  
