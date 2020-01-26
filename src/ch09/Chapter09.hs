module Chapter09 where

import           Data.Char

filterUpper :: String -> String
filterUpper = filter isUpper

capitalize :: String -> String
capitalize ""       = ""
capitalize (x : xs) = toUpper x : xs

toUpperString :: String -> String
toUpperString ""       = ""
toUpperString (x : xs) = toUpper x : toUpperString xs

headCapitalize :: String -> Char
headCapitalize = toUpper . head
