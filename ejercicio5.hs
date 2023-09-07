

--problema f (n: Z) : Z {
--requiere: {True}
--asegura: {(n ≤ 7 → res = n^2 ) ∧ (n > 7 → res = 2n − 1)}
--}
f:: Integer -> Integer
f x | x<=7  = x ^ 2
    |otherwise = 2*x -1    

--problema g (n: Z) : Z {
--requiere: {True}
--asegura: {Si n es un número par,
-- entonces res = n/2, en caso contrario, res = 3n + 1}
--}
g:: Integer -> Integer    
g x | mod x 2 == 0  = div x 2
    |otherwise = 3*x +1 

--Ejercicio 5. Implementar la función
-- todosMenores :: (Integer, Integer, Integer) ->Bool
--problema todosMenores ((x,y,z):ZxZxZ) : Bool {
--requiere: {True}
--asegura: {
--(res = true) ↔ ((f (x ) > g(x ))
           -- ∧ (f (y ) > g(y )) 
            -- ∧ (f (z ) > g(z ))))}
--}
todosMenores :: (Integer, Integer, Integer) ->Bool
todosMenores (x,y,z)|   f x  > g x   &&  f y  > g y   &&  f z  > g z    = True     
                    | otherwise = False
