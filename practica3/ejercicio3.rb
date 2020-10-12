# 3.- Un número palíndromo se lee igual al derecho y al revés. El número palíndromo más
# grande obtenido de la multiplicación de dos números de 2 dígitos es 9009 (91 x 99 = 9009).
# Encontrá el palíndromo más grande obtenido a través de la multiplicación de dos números
# de 3 dígitos.

def palindromo?(n)
    n=n.to_s
    ns=n.to_s.reverse
    ns==n
end

def find_max(minimo,maximo)
lista_pal = [ ]
rango = minimo..maximo
rango.each do |a|
  rango.each do |b|
        multiplicacion = a * b
        if palindromo?(multiplicacion)
            lista_pal.unshift(multiplicacion)
        end
  end 
end
lista_pal.max
end

puts find_max(100,999)