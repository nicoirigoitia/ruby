def fibo(n,aux,lista)

    if(n <= 4000000)
     if(n%2 == 0)
       lista.append(n)
     end
     fibo(n+aux,n,lista)
    end
   
   lista
   end
   
   lista = []
   
   a = fibo(1,1,lista).reduce { |sum,n| sum + n }
   puts "La suma de pares es #{a}"