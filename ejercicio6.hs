
--Ejercicio 6. Programar una función
--bisiesto :: Integer ->Bool según la siguiente especificación:
--problema bisiesto (año: Z) : Bool {
--requiere: {True}
--asegura: {res = false ↔ año no es múltiplo de 4 o 
--año es múltiplo de 100 pero no de 400}
--}
--Por ejemplo:
--bisiesto 1901 -->False
--bisiesto 1900 -->False
--bisiesto 1904-->True
--bisiesto 2000-->True
bisiesto :: Integer ->Bool
bisiesto x | mod x 4 /= 0 || ( mod x 100== 0 && mod x 400 /=0) = False 
           |otherwise = True
