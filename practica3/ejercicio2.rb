# Cada nuevo término en la secuencia de Fibonacci es generado sumando los 2 términos anteriores. Empezando con 1 y 2;los primeros 10 términos son:1,2,3,5,8,13,21,34,55,89. Considerando los términos en la secuencia de Fibonacci cuyos valores no exceden los 4 millones, encontrá la suma de los términos pares.


def fibo(n,aux,lista)
    if (n <= 4000000)
        if (n%2 == 0)
            lista.append(n)
        end 

        fibo(n+aux,n,lista)
    end
    lista
end

lista = []

a = fibo(1,1,lista).reduce(:+)
puts "La suma de pares es #{a}"