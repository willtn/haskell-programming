module CaseExpression where

functionC :: Ord a => a -> a -> a
functionC x y = case x > y of
  True  -> x
  False -> y

ifEvenAdd2 :: Integral a => a -> a
ifEvenAdd2 x = case even x of
  True  -> x + 2
  False -> x

nums :: (Ord a, Num a) => a -> a
nums x = case compare x 0 of
  LT -> -1
  GT -> 1
  EQ -> 0
