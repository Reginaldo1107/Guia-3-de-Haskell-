--problema sumaUltimosDosDigitos (x: Z) : Z {
--requiere: {T rue}
--asegura: {res = (x mód 10) + (b(x/10)c mód 10)}
--}
sumaUltimosDosDigitos :: Integer -> Integer
sumaUltimosDosDigitos x = mod x 10 + mod (div x 10) 10

--Ejercicio 8. Implementar una función 
--comparar :: Integer ->Integer ->Integer
--problema comparar (a:Z, b:Z) : Z {
--requiere: {True}
--asegura: {(res = 1 ↔ sumaUltimosDosDigitos(a) < sumaUltimosDosDigitos(b))}
--asegura: {(res = −1 ↔ sumaUltimosDosDigitos(a) > sumaUltimosDosDigitos(b))}
--asegura: {(res = 0 ↔ sumaUltimosDosDigitos(a) = sumaUltimosDosDigitos(b)))}
--}
comparar :: Integer ->Integer ->Integer
comparar x y  |sumaUltimosDosDigitos x < sumaUltimosDosDigitos y = 1 
              |sumaUltimosDosDigitos x > sumaUltimosDosDigitos y = (-1)
              |otherwise = 0
