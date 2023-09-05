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



