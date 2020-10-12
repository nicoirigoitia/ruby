#1.-​Si listamos todos los números naturales menores que 10 que son múltiplos de 3 o 5 obtenemos 3,5,6 y 9.La suma de todos estos números es 23. Encontrá la suma de todos los múltiplos de 3 o 5 menores que 1000


puts ((1..10).select { |n| n%3 == 0 || n%5 == 0 }).reduce (:+) 