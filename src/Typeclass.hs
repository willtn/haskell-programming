module Typeclass where

  data TisAnInteger =
    TisAn Integer

  data TwoIntegers =
    Two Integer Integer

  data StringOrInt =
    TisAnInt Int | TisAString String

  data Pair a =
    Pair a a

  data Tuple a b =
    Tuple a b

  data Which a =
    ThisOne a | ThatOne a

  data EitherOr a b =
    Hello a | Goodbye b

  data DayOfWeek =
    Mon | Tue | Weds | Thu | Fri | Sat | Sun
    deriving (Show, Eq)

  instance Ord DayOfWeek where
    compare Fri Fri = EQ
    compare Fri _   = GT
    compare _   Fri = LT
    compare _   _   = EQ
