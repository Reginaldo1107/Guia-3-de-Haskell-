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
     