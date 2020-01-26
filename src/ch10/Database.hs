module Database where

import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate   UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime
            (fromGregorian 1911 5 1)
    (secondsToDiffTime 34123)) 
  , DbNumber 9001
  , DbString "Hello, world!"
  , DbDate (UTCTime
            (fromGregorian 1921 5 1)
            (secondsToDiffTime 34123))
  ]

-- filterDbDate :: [DatabaseItem] -> [UTCTime]
-- filterDbDate = foldr pickTime []
                 -- where
                   -- pickTime (DbDate time) xs = time : xs
                   -- pickTime _ xs = xs
filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate xs = [x | (DbDate x) <- xs]

-- filterDbNumber :: [DatabaseItem] -> [Integer]
-- filterDbNumber = foldr pickNumber []
                  -- where
                    -- pickNumber (DbNumber x) xs = x : xs
                    -- pickNumber _ xs = xs
filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber xs = [x | (DbNumber x) <- xs]

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = maximum . filterDbDate 

sumDb :: [DatabaseItem] -> Integer
sumDb = sum . filterDbNumber

avgDb :: [DatabaseItem] -> Double
avgDb items = fromIntegral total / n
  where
    nums = filterDbNumber items
    (total, n) = foldr (\num (subtotal, count) -> (subtotal + num, count + 1)) 
      (0, 0)
      nums
