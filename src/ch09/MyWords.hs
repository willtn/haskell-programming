module MyWords where

import           Data.List

myWords :: String -> [String]
myWords words | words == "" = []
              | otherwise   = word : myWords rest
 where
  word = takeWhile (/= ' ') words
  rest = drop (1 + length word) words
