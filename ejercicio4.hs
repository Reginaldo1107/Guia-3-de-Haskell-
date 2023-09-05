--Ejercicio 4)
--Especificar e implementar las siguientes 
--funciones utilizando tuplas para representar 
--pares, ternas de numeros.
--a) prodInt: calcula el producto interno entre 
--dos tuplas R × R.

prodInt :: (Float , Float) -> (Float , Float) -> Float 
prodInt  (x, y) (w ,z) = x * w + y * z 