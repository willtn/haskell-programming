module Split where

split :: Eq a => a -> [a] -> [[a]]
split sep list | null list = []
               | otherwise = head : split sep tail
 where
  head = takeWhile (/= sep) list
  tail = drop (1 + length head) list
