fibo :: Int -> [Int]
fibo m = [1,2] ++ body m 1 2
    where
        body :: Int -> Int -> Int -> [Int]
        body m x y
         | x + y < m = [x+y] ++ body m y (x+y)
         | otherwise = []

main :: IO ()
main = print . sum $ filter even (fibo 4000000)
