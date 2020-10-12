require 'csv'

class Contacto
    attr_accessor :nombre, :fecha, :email, :tel, :dir

    def initialize(nombre,fecha,email,tel,dir)
        @nombre=nombre
        @fecha=fecha
        @email=email
        @tel=tel
        @dir=dir
    end

    def to_s
        puts 'el nombre es',nombre
        puts 'el fecha es',fecha
        puts 'el email es',email
        puts 'el tel es',tel
        puts 'el dir es',dir
    end

end

class CsvReader

    attr_accessor :agenda
    def initialize
        @agenda = []
    end

    def read_in_csv_data(csv_file_name)
        CSV.foreach(csv_file_name, headers: true) do |row|
            @agenda << Contacto.new(
                row["Nombre"],
                row["Fecha"],
                row["Email"],
                row["Telefono"],
                row["Dirección"]
            )
        end 
    end

    def ver_todos_contactos(csv_file_name)
        agenda = CSV.read(csv_file_name)
        CSV.foreach(csv_file_name) do |row|
            puts row.inspect
        end
    end

    def editar_un_contacto

    end

    def buscar_un_contacto(campo,valor)
        agenda = CSV.read('file2.csv', headers: true)
        return agenda.find {|row| row[campo] == valor}
    end

    def agregar_un_contacto(contacto)
        CSV.open('file2.csv', 'a+') do |csv_object|
            csv_object << [contacto[0],contacto[1],contacto[2],contacto[3],contacto[4]]
            end
    end

end
agenda = CSV.read('file1.csv')


contacto = ['pepe','hoy','pepe','32222','1340']
reader = CsvReader.new
reader.agregar_un_contacto(contacto)

valor = 'pepe'
file = 'file2.csv'
campo = 'nombre'
campo_nuevo = 'pepito'

agenda = CSV.read('file2.csv','a+', headers: true)
if agenda.find {|row| row[campo] == valor} == nil
    puts 'no se encontro'
else
    puts 'se encontro'
    a= agenda.find {|row| row[campo] = valor}
    puts agenda
    a['nombre']= 'pepito'
    agenda.delete('nombre')
     puts agenda
end

