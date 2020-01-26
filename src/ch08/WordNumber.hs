module WordNumber where

import           Data.List

digitToWord :: Int -> String
digitToWord 0 = "zero"
digitToWord 1 = "one"
digitToWord 2 = "two"
digitToWord 3 = "three"
digitToWord 4 = "four"
digitToWord 5 = "five"
digitToWord 6 = "six"
digitToWord 7 = "seven"
digitToWord 8 = "eight"
digitToWord 9 = "nine"
digitToWord _ = undefined

digits :: Int -> [Int]
digits n | quotient == 0 = remainderList
         | otherwise     = digits quotient ++ remainderList
 where
  quotient      = div n 10
  remainder     = mod n 10
  remainderList = [remainder]

wordNumber :: Int -> String
wordNumber = concat . hyphens . words . digits
 where
  words   = map digitToWord
  hyphens = intersperse "-"
