module Cipher where
import Data.Char

caesar :: Int -> String -> String
caesar shift str =
  case str of
    [] -> str
    x:xs -> cipher x : xs
      where cipher x = chr (mod (shift + ord x) 26)

unCaesar :: Int -> String -> String
unCaesar shift str =
  case str of
    [] -> str
    x:xs -> unCipher x : xs
      where unCipher x = chr (mod (ord x - shift) 26)
