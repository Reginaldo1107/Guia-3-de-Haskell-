--Ejercicio 4)
--Especificar e implementar las siguientes 
--funciones utilizando tuplas para representar 
--pares, ternas de numeros.
--a) prodInt: calcula el producto interno entre 
--dos tuplas R × R.

prodInt :: (Float , Float) -> (Float , Float) -> Float 
prodInt  (x, y) (w ,z) = x * w + y * z 

--b) todoMenor: dadas dos tuplas R x R, decide si 
--es cierto que cada coordenada de la primera 
--tupla es menor a la coordenada correspondiente 
-- de la segunda tupla
todoMenor :: (Float , Float) -> (Float , Float) -> Bool 
todoMenor (x , y) (w , z) = (x < w && y < z) 


--c)distanciaPuntos: calcula la distancia entre 
--dos puntos de R°2

distanciaPuntos :: (Float , Float) -> (Float , Float) -> Float 
distanciaPuntos (x, y) (w, z) = sqrt ((x - w) ^ 2 + (y - z) ^ 2)

--d) sumaTerna: dada una terna de enteros, calcula 
--la suma de sus tres elementos.
sumaTerna:: (Int , Int , Int) -> Int
sumaTerna (x,y,z) = x + y + z




