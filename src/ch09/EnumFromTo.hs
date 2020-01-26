module EnumFromTo where

eftBool :: Bool -> Bool -> [Bool]
eftBool False False = [False]
eftBool False True  = [False, True]
eftBool _     _     = [True]

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd LT LT = [LT]
eftOrd LT EQ = [LT, EQ]
eftOrd LT GT = [LT, EQ, GT]
eftOrd EQ LT = []
eftOrd EQ EQ = [EQ]
eftOrd EQ GT = [EQ, GT]
eftOrd GT LT = []
eftOrd GT EQ = []
eftOrd GT GT = [GT]

eftOrdering :: (Ord a, Enum a) => a -> a -> [a]
eftOrdering start end | start == end = [start]
                      | start > end  = []
                      | otherwise    = start : eftOrdering (succ start) end

eftInt :: Int -> Int -> [Int]
eftInt = eftOrdering

eftChar :: Char -> Char -> [Char]
eftChar = eftOrdering
