--Ejercicio 1.
 --a) Implentar la funci´on parcial f :: Integer ->Integer 
 --definida por extensi´on de la siguiente manera:
--f(1) = 8
--f(4) = 131
--f(16) = 16

f:: Int -> Int 
f  x | x == 1 = 8 
     | x == 4 = 131
     | x == 16 = 16 

--b) Analogamente, especificar e implementar la funcion 
--parcial g :: Integer ->Integer
--g(8) = 16
--g(16) = 4
--g(131) = 1

g:: Int -> Int 
g  x | x == 8 = 16 
     | x == 16 = 4
     | x == 131 = 1 
