module SquareCube where

mySqr = [ x ^ 2 | x <- [1 .. 5] ]

myCube = [ y ^ 3 | y <- [1 .. 5] ]

tuple xs ys = [ (x, y) | x <- xs, y <- ys ]

limitedTuple xs ys = [ (x, y) | x <- xs, x < 50, y <- ys, y < 50 ]

inhabitants xs ys = length (limitedTuple xs ys)
