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

--c) A partir de las funciones definidas en los 
--items 1 y 2,implementar las funciones parciales 
--h = f ◦ g y k = g ◦ f
--HAY DOS FORMAS DE HACERLO UNA A MANO QUE NO 
--ESTA TAN BUENO Y OTRA USANDO LAS FUNCIONES
--ANTERIORES 
--h = f ◦ g , solo podre hacer cuando es :
-- h = 8, 16 ,131
--f(1) = 8
--f(4) = 131
--f(16) = 16
-------------
--g(8) = 16
--g(16) = 4
--g(131) = 1
--h = f ◦ g  , h = 8, 16 ,131
h:: Int -> Int 
h  x | x == 8 = 16 
     | x == 16 = 131
     | x == 131 = 8 
--k = g ◦ f , k = 1,4,16
k:: Int -> Int 
k  x | x == 1 = 16 
     | x == 4 = 1
     | x == 16 = 4 

---Una forma de funcion poniendo una funcion en una funcion
-- h2 = f ◦ g  , h2 = 8, 16 ,131
h2:: Int -> Int 
h2  x = f (g x) 
-- k2 = g ◦ f , k2 = 1,4,16
k2:: Int -> Int 
k2  x = g (f x)



