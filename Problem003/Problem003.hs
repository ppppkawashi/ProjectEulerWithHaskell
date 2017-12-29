-- 最大素因数の求め方！！
-- 1. 素因数のリストを作る
-- 2. 末尾の項目を取得する
-- 3. 完成！

-- 素因数のリストを作る！！
-- デクリメント (素因数分解) Int -> Int
-- 素因数判定 (割り切れるか判定) Int -> Bool
-- 割り切れる奴を素因数分解 

f :: Int -> [Int]
f x = 
    if x `mod` (x-1) == 0
        then -- x : f 
        else -- 割り切れない、スキップ対象

-- 全ての要素が素因数になるまで下記を繰り返す
-- 12 -> [6, 2] 1回目の分解
-- [6,2] -> False 全ての要素が素因数か藩邸
-- 6 -> [3, 2] 2回目の分解 (各要素ごとに行う(素数じゃない場合))
-- 2 -> [2] 2回目の分解
-- [3,2] ++ [2] -> [3,2,2] 2回目の分解を結合
-- [3,2,2] -> True 全ての要素が素因数か判定

-- 12 -> [6, 2]
-- 6 -> [3, 2] ++ [2]


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

maxPrimeNumber :: Int -> Int
maxPrimeNumber x
    | x `mod` 2 == 0 -- 成功 
    | x / 2

main :: IO ()
main = print $ nextPrimeNumber 1