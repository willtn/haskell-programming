module Guards where

myAbs :: Integer -> Integer
myAbs x | x < 0     = -x
        | otherwise = x

bloodNa :: Integer -> String
bloodNa x | x < 135   = "too low"
          | x > 145   = "too high"
          | otherwise = "just right"

isRight :: (Num a, Eq a) => a -> a -> a -> String
isRight a b c | a ^ 2 + b ^ 2 == c ^ 2 = "RIGHT ON"
              | otherwise              = "not right"

avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x | otherwise = 'U'
           | y >= 0.9  = 'A'
           | y >= 0.8  = 'B'
           | y >= 0.7  = 'C'
           | y >= 0.59 = 'D'
           | y < 0.59  = 'F'
  where y = x / 100

pal :: Eq a => [a] -> Bool
pal xs | xs == reverse xs = True
       | otherwise        = False

numbers :: (Ord a, Num a) => a -> Integer
numbers x | x < 0  = -1
          | x == 0 = 0
          | x > 0  = 1
