module FunctionWithLet where
printInc2 n = let plusTwo = n + 2 in print plusTwo

x3y = x * 3 + y
 where
  x = 3
  y = 1000

potato = x * 5
 where
  y = 10
  x = 10 * 5 + y

tomato = z / x + y
 where
  x = 7
  y = negate x
  z = y * 10

waxOn = x * 5
 where
  x = y ^ 2
  y = z + 8
  z = 7

triple x = x * 3

waxOff x = triple x

exclaim :: String -> String
exclaim x = x ++ "!"

fifth :: String -> Char
fifth x = head $ drop 4 x

