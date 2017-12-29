-- ある値を余りが0になる最小の素数で割り、答えが1になるまでそれを繰り返す
-- 12を素因数分解する時は 12 / 2 = 6, 6 / 2 = 3, 3 / 3 = 1 なら素因数は 2, 2, 3
-- 素因数の中で最も大きい値を最大素因数と呼ぶ、今回の問題では最大素因数を求める

-- Haskell で表現するには、無限に大きい素数のリストが欲しい
-- もしくは、ある素数を渡すとその次の素数を返す関数とか (例: NextPrimeNumber)
-- 素数を求めるには、ある値未満(x>1)の値である値を割った時に余りが0にならない値を探す
-- 素数でなければある値を加算する

isPrimeNumber :: Int -> Bool
isPrimeNumber x = body x (x-1)
    where
        body x y
            | x == 1 = False
            | y <= 1 = True            
            | x `mod` y == 0 = False
            | otherwise = body x (y-1)
            
nextPrimeNumber :: Int -> Int
nextPrimeNumber x = 
    1 * if isPrimeNumber (x+1) 
            then (x+1)
            else nextPrimeNumber (x+1) 

main :: IO ()
main = print $ nextPrimeNumber 1