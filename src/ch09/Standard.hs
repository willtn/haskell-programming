module Standard where
  myAnd :: [Bool] -> Bool
  myAnd [] = True
  myAnd (False:xs) = False
  myAnd (x:xs) = myAnd xs

  myOr :: [Bool] -> Bool
  myOr [] = False
  myOr (True:xs) = True
  myOr (x:xs) = myOr xs

  myAny :: (a -> Bool) -> [a] -> Bool
  myAny f [] = False
  myAny f (x:xs) =
    f x || myAny f xs

  myElem :: Eq a => a -> [a] -> Bool
  myElem e = myAny (e ==) 

  myReverse :: [a] -> [a]
  myReverse xs = go [] xs
    where
      go ys [] = ys
      go ys (x:xs) = go (x:ys) xs

  squish :: [[a]] -> [a]
  squish [] = []
  squish (x:xs) = x ++ squish xs

  squishMap :: (a -> [b]) -> [a] -> [b]
  squishMap f xs = squish (map f xs)

  squishAgain :: [[a]] -> [a]
  squishAgain = squishMap id

  myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
  myMaximumBy f l = :
