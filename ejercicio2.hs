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
                   
