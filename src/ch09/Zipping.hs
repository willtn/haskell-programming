module Zipping where

zip :: [a] -> [b] -> [(a, b)]
-- zip []       _        = []
-- zip as       []       = []
-- zip (a : as) (b : bs) = (a, b) : Zipping.zip as bs
zip = Zipping.zipWith (\a b -> (a, b))

zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith _ []       _        = []
zipWith _ _        []       = []
zipWith f (a : as) (b : bs) = f a b : Zipping.zipWith f as bs
