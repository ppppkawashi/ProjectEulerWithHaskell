fibo m x y = 
    (x+y) : if x + y < m 
        then fibo m y (x+y)
        else []
        
main = print $ [1,2] ++ fibo 10 1 2