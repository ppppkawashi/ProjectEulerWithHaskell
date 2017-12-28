fibo m x y
    | x == 1 || y == 2 = [x,y] ++ fibo m y (x+y)
    | x + y < m = [x+y] ++ fibo m y (x+y)
    | otherwise = []

main = print $ fibo 15 1 2
