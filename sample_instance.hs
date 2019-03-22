data Animal = Cat | Dog

instance Show Animal where
  show Cat = "cat"
  show Dog = "dog"

main :: IO ()
main =
  print (show Cat)
  >>= \_ -> print "hello"
