#!/usr/bin/env runhaskell
{-# LANGUAGE DeriveDataTypeable #-}
module Main where

import Sytem.Console.CmdArgs

data Option = Option
    { file :: String
    } deriving (Show, Data, Typeable)

option :: Option
option = Option
    { file = "sample.txt" }

main :: IO ()
main = do
  opt <- cmdArgs
  inh <- openFile "sample.txt" ReadMode
  mainloop inh
  hClose inh

mainloop :: Handle -> IO ()
mainloop inh = 
  do ineof <- hIsEOF inh
     if ineof then return ()
             else do inpStr <- hGetLine inh
                     putStrLn inpStr
                     mainloop inh

