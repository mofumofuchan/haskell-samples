#!/usr/bin/env runhaskell
{-# LANGUAGE DeriveDataTypeable  #-}
module Main where

import System.Console.CmdArgs

data Option = Option
    { label :: String
    , size :: Int
    } deriving (Show, Data, Typeable)

option :: Option
option = Option
    { label = "no label"
    , size = 0
    }

main :: IO ()
main = do
        opt <- cmdArgs option
        print opt
