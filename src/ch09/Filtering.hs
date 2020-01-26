module Filtering where

multipleOfThree :: Integral a => [a] -> [a]
multipleOfThree = filter (\x -> mod x 3 == 0)

num :: Integral a => [a] -> Int
num = length . multipleOfThree

removeArticles :: String -> [String]
removeArticles s = [ x | x <- words s, notElem x ["the", "a", "an"] ]
