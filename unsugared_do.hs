data Hoge = II deriving (Show)

huga :: a -> a
huga x = x

-- main :: IO ()
-- main = do
--   i <- return II
--   let x = huga i
--   print x
main :: IO ()
main =
  huga <$> return II >>=
  \x -> print x

