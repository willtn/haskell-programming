module Typecheck where

-- f :: Num a => a
-- f = 1.0

fl :: RealFrac a => a
fl = 1.0

freud :: a -> a
freud x = x

freud1 :: Ord a => a -> a
freud1 x = x

freud' :: Int -> Int
freud' x = x

myX = 1 :: Int
sigmund :: Int -> Int
sigmund x = myX
