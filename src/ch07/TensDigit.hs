module TensDigit where

tensDigit :: Integral a => a -> a
tensDigit x = d
 where
  xLast = x `div` 10
  d     = xLast `mod` 10

-- a
myTensDigit :: Integral a => a -> a
myTensDigit x = d
 where
  (xLast, _) = x `divMod` 10
  (_    , d) = xLast `divMod` 10

-- b
-- Same

-- c
hunsD :: Integral a => a -> a
hunsD x = d2
 where
  (xLast, _ ) = x `divMod` 100
  (_    , d2) = xLast `divMod` 10
