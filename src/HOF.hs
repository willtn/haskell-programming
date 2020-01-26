module HOF where
  data Employee = Coder
              | Manager
              | Veep
              | CEO
            deriving (Eq, Ord, Show)
  reportBoss :: Employee -> Employee -> IO ()
  reportBoss e e' =
    putStrLn $ show e ++ " is the boss of " ++  show e'

  employeeRank :: Employee -> Employee -> IO ()
  employeeRank e e' =
    case compare e e' of
      GT -> reportBoss e e'
      EQ -> putStrLn "Neither employee is the boss"
      LT -> (flip reportBoss) e e'

  employeeRank1 :: ( Employee
                  -> Employee
                  -> Ordering )
                  -> Employee
                  -> Employee
                  -> IO ()
  employeeRank1 f e e' =
    case f e e' of
      GT -> reportBoss e e'
      EQ -> putStrLn "Neither employee is the boss"
      LT -> (flip reportBoss) e e'

  codersRuleCEOsDrool :: Employee
                        -> Employee
                        -> Ordering
  codersRuleCEOsDrool Coder Coder = EQ
  codersRuleCEOsDrool Coder _ = GT
  codersRuleCEOsDrool _ Coder = LT
  codersRuleCEOsDrool e e' = compare e e'

  dodgy :: Num a => a -> a -> a
  dodgy x y = x + y * 10

  oneIsOne :: Num a => a -> a
  oneIsOne = dodgy 1

  oneIsTwo :: Num a => a -> a
  oneIsTwo = (flip dodgy) 2