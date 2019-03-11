#!/usr/bin/env stack
-- stack runghc

main = do
  print "What is your name?"
  name <- getLine
  print ("hello " ++ name ++ "! Where do you live?")
  house <- getLine
  print ("Oh, You live in " ++ house ++ "! Thank you.")

