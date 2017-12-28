f (x:xs) = 
    f xs + if mod x 3 == 0 || mod x 5 == 0 then x else 0
f _ = 0

main = do
    print $ f a
    where
        a = [0..1000]