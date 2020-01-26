module FoldBool where

foldBool :: a -> a -> Bool -> a
foldBool x _ False = x
foldBool _ y True  = y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y c = case c of
  True  -> x
  False -> y

foldBool3 :: a -> a -> Bool -> a
foldBool3 x y c | c     = x
                | not c = y
