#1. Se quiere administrar una agenda electrónica. 
#De cada contacto necesita guardarse:
#Nombre
#Fecha de nacimiento
#Email
#Teléfono
#Dirección

#Se quiere hacer una aplicación de línea de comandos que permita:

#Ver todos los contactos
#Agregar un contacto
#Editar un contacto
#Buscar un contacto
#Los datos deben ser guardados en un archivo CSV.

class Contacto

    attr_accessor :nombre, :fecha, :email, :tel, :dir

    def initialize(nombre,fecha,email,tel,dir)
        @nombre=nombre
        @fecha=fecha
        @email=email
        @dir=dir
    end

    def to_s
        puts 'El nombre es' ,nombre
        puts 'La fecha es',fecha
        puts 'El email es',email
        puts 'El telefono es',tel
        puts 'La direccion es',dir
    end

    
end




class Agenda
    def initialize()
        lista[]
    end

    def ver_contactos(lista)
        lista.each do |contacto|
            contacto.to_s
        end
    end

    def agregar(lista)
        puts 'ingrese nombre'
        nombre=gets
        puts 'ingrese fecha de nacimiento'
        fecha=gets
        puts 'ingrese email'
        email=gets
        puts 'ingrese telefono'
        tel=gets
        puts 'ingrese direccion'
        dir=gets
    
        contacto = Contacto.new(nombre,fecha,email,tel,dir)   
        lista.append(contacto)
    end
end



lista = []
agregar(lista)
agregar(lista)
ver_contactos(lista)              