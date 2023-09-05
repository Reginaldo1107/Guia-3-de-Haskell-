--Ejercicio 3. Implementar una funcion --estanRelacionados :: Integer ->Integer ->Bool
estanRelacionados:: Integer -> Integer -> Bool
estanRelacionados x y |y == 0 = False 
                      | mod x y == 0 || x == 0 = True
                      |otherwise = False 