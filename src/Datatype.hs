module Datatype where

  f :: (a, b) -> (c, d) -> ((b, d), (a, c))
  f ab cd = ((snd ab, snd cd), (fst ab, fst cd))

  myAbs :: Integer -> Integer
  myAbs num = if num >= 0 then num else -num

  reverse :: [a] -> [a]
  reverse a = undefined

  isPalindrome :: (Eq a) => [a] -> Bool
  isPalindrome x = x == Datatype.reverse x

  not :: Bool -> Bool
  not a = Prelude.not a

  length :: Foldable t => t a -> Int
  length ta = undefined

  concat :: Foldable t => t [a] -> [a]
  concat ta = undefined

  head :: [a] -> a
  head as = undefined

  (<) :: Ord a => a -> a -> Bool
  (<) a b = (Prelude.<) a b
