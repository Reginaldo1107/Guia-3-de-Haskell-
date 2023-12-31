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


--e) sumarSoloMultiplos: dada una terna de numeros 
--enteros y un natural, calcula la suma de los 
--elementos de la terna que son multiplos del 
--numero natural. Por ejemplo:
--son multiplos del numero natural. Por ejemplo:
--sumarSoloMultiplos (10,-8,-5) 2 -> 2
--sumarSoloMultiplos (66,21,4) 5 -> 0
--sumarSoloMultiplos (-30,2,12) 3 -> -18

sumarSoloMultiplos:: (Int , Int , Int) -> Int -> Int 
sumarSoloMultiplos (x , y ,z)  v | (mod x v == 0) && (mod y v == 0) && (mod z v == 0) = x + y + z
                                 | (mod x v /= 0) && (mod y v == 0) && (mod z v == 0) =  y + z
                                 | (mod x v == 0) && (mod y v /= 0) && (mod z v == 0) = x + z
                                 | (mod x v == 0) && (mod y v == 0) && (mod z v /= 0) = x + y 
                                 | (mod x v == 0) && (mod y v /= 0) && (mod z v /= 0) =  x
                                 | (mod x v /= 0) && (mod y v == 0) && (mod z v /= 0) =  y
                                 | (mod x v /= 0) && (mod y v /= 0) && (mod z v == 0) =  z
                                 | otherwise = 0
                                  


-- f )posPrimerPar: dada una terna de enteros, devuelve 
--la posición del primer número par si es que hay alguno,
-- y devuelve 4 si son todos impares.
posPrimerPar:: (Integer , Integer , Integer) -> Integer
posPrimerPar (x ,y ,z)  | mod x 2 == 0 = 1
                        | mod y 2 == 0 = 2
                        | mod z 2 == 0 = 3
                        |otherwise = 4

--g) crearPar :: a ->b ->(a, b):
-- crea un par a partir de sus dos componentes
-- dadas por separado (debe funcionar para
-- elementos de cualquier tipo).
crearPar :: Float  ->Float -> (Float , Float)
crearPar x y = (x, y)

--h) invertir :: (a, b) ->(b, a):
-- invierte los elementos del par pasado como
-- parámetro (debe funcionar para elementos
--de cualquier tipo).
invertir :: (Float, Float) ->(Float, Float)
invertir (x, y) = (y ,x)










