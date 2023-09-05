--Ejercicio 2 : Especificar e implementar
-- las siguientes funciones, incluyendo su signatura.
--a) valorAbsoluto: calcula el valor valorAbsoluto de un numero entero.
valorAbsoluto :: Integer ->Integer 
valorAbsoluto a | a < 0  = -a
                | a > 0  = a 
                | otherwise = 0 

--b) maximoabsoluto: devuelve el maximo entre el 
--valor absoluto de dos numeros enteros.
maximoAbsoluto :: Integer -> Integer ->Integer 
maximoAbsoluto x y | valorAbsoluto x <= valorAbsoluto y  = valorAbsoluto y
                   | otherwise = valorAbsoluto x --valorAbsoluto x > valorAbsoluto y  = x
                   
--c) maximo3: devuelve el máximo entre tres números enteros.
--- creo una funcion que compare dos numeros y devuelva el maximo 
maximoDe2 :: Int -> Int -> Int
maximoDe2 x y | x <= y = y
              |otherwise = x 

maximoDe3 :: Int ->Int -> Int ->Int
maximoDe3 x y z =  maximoDe2 (maximoDe2 x y)  z

--d) algunoEs0: dados dos números racionales, 
--decide si alguno de los dos es igual a 0 (hacerlo
-- dos veces, una usando pattern matching y otra no).
algunoEs0 :: Float -> Float -> Bool
algunoEs0 a b | a == 0 || b == 0 = True 
              | otherwise = False
---Con pattern matching
algunoEs02 :: Float -> Float -> Bool
algunoEs02  0 _ = True
algunoEs02  _ 0 = True
algunoEs02  _ _ = False
-------------------------
--e)ambosSon0: dados dos números racionales, decide si
--ambos son iguales a 0 (hacerlo dos veces, una usando
-- pattern matching y otra no).

ambosSon0 :: Float -> Float -> Bool
ambosSon0 x y | x==0 && y ==0 = True
              |otherwise = False  

---patern Maching 2.0
ambosSon02 :: Float -> Float -> Bool
ambosSon02  0 0 = True
ambosSon02  _ _ = False
           
--f) mismoIntervalo: dados dos números reales, indica si están
-- relacionados considerando la relación de equivalencia en R
--cuyas clases de equivalencia son: (−∞, 3], (3, 7] y (7, ∞), o --dicho de otra forma, si pertenecen al 
--mismointervalo.              

mismoIntervalo :: Float -> Float -> Bool
mismoIntervalo x y | x<=3 && y<=3 = True
                   |(x>3 && x<=7) && (y>3 && y<=7) = True
                   | x >7 && y>7  = True
                   |otherwise = False
                   
--g) sumaDistintos: que dados tres números enteros calcule la suma sin sumar repetidos (si los hubiera).
--Aca tomo que si se repite lo sumo una vez 
sumaDistintos :: Int -> Int -> Int -> Int 
sumaDistintos x y z | x == y && y /= z = y + z
                    | x /= y && y == z = x + z 
                    | x == z && x /= y = x + y               
                    | x /= y && y /= z = x + y + z
                    | otherwise = x--x == y && x == z  = x 
                    
--h) esMultiploDe: dados dos números naturales, 
--decidir si el primero es múltiplo del segundo.
esMultiploDe :: Int -> Int -> Bool 
--esMultiploDe x y | mod x y == 0 = True 
--                 |otherwise = False 
esMultiploDe x y = mod x y == 0 

--i) digitoUnidades: dado un número natural, 
--extrae su dígito de las unidades.
digitoUnidades :: Int -> Int
digitoUnidades x = mod x 10 

--j) digitoDecenas: dado un número natural, 
--extrae su dígito de las decenas.
digitoDecenas :: Int -> Int
digitoDecenas x = mod  (div x 10)  10


