fibo :: Integer -> Integer
fibo n =
  if n == 0 || n == 1 then 1
  else fibo (n - 1) + fibo (n - 2)
