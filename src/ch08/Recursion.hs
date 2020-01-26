module Recursion where

-- mySum a = a + mySum (a - 1)
mySum :: (Eq a, Num a) => a -> a
mySum 0 = 0
mySum a = a + mySum (a - 1)

myMultiple :: (Integral a) => a -> a -> a
myMultiple _ 0     = 0
myMultiple 0 _     = 0
myMultiple a count = a + myMultiple a (count - 1)

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
 where
  go n d count | n < d     = (count, n)
               | otherwise = go (n - d) d (count + 1)

data DividedResult a = Result a | DividedByZero deriving Show

myDividedBy :: Integral a => a -> a -> DividedResult a
myDividedBy num denom | denom == 0      = DividedByZero
                      | num * denom > 0 = Result r
                      | otherwise       = Result (-r)
 where
  r = go (abs num) (abs denom) 0
  go n d count | n < d     = count
               | otherwise = go (n - d) d (count + 1)

mc91 :: (Num a, Ord a) => a -> a
mc91 n | n > 100   = n - 10
       | otherwise = mc91 (mc91 (n + 11))
