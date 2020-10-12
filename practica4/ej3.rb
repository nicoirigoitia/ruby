require 'csv'

productos = [] #crea lista vacia

def read_in_csv_data(csv_file_name,productos) #read el csv
    CSV.foreach(csv_file_name) do |row|
            index = row[0]
            titulo =row[1]
            precio = row[2]
            producto = [row[0],row[1],row[2]]
            productos << producto #anade el producto a la lista productos

    end
end

read_in_csv_data('archivo.csv',productos)

orden = Array.new

def add(producto,productos,orden)
  if (productos.find { |x| x[1] == producto }).nil? #encuentra el producto por posicion. nulo?
        puts 'no se encontro'
    else 
        puts 'se encontro'
        orden << producto #la orden es el producto encontrado
        precio = productos.select{|(x,y,z)| y==producto} #selecciona los 3 items del array y compara el 2do
        puts precio[0][2]
        #puts orden
    end
end

add('Historias de chillar',productos,orden)