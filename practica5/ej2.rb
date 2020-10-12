class Estudiante

	attr_accessor :nombre, :dni, :edad, :ciudad_natal, :calificacion
	def initialize (nombre, dni, edad, ciudad_natal, calificacion)
		@nombre = nombre
		@dni = dni
		@edad = edad
		@ciudad_natal = ciudad_natal
		@calificacion = calificacion
	end

end

class Curso 
	attr_accessor :estudiantes
	def initialize (nombre)
		@nombre = nombre
		@estudiantes = []
	end

	def resetear_notas ()
		@estudiantes.each do |estudiante|
			estudiante.calificacion = 0
		end
	end

	def agregar (estudiantes)
		estudiantes.each do |estudiante| 
			@estudiantes << estudiante
		end
	end

	def cantidad_de_estudiantes_inscriptos ()
		@estudiantes.count
	end 

	def estudiantes_aprobados ()
		@estudiantes.reject { |estudiante| estudiante.calificacion < 4 }
	end	

	def existe_estudiante? (nombre)
		@estudiantes.map {|estudiante| estudiante.nombre}.include? nombre
	end

	def porcentaje_aprobados ()
		puts "#{(estudiantes_aprobados.count*100)/cantidad_de_estudiantes_inscriptos}%"
	end

	def promedio_calificaciones ()
		p (@estudiantes.sum(&:calificacion).to_f)/cantidad_de_estudiantes_inscriptos
	end

	def estudiantes_no_platenses ()
		p @estudiantes.reject {|estudiante| estudiante.ciudad_natal.downcase == "la plata"}
	end

	def calificacion_mas_frecuente ()
		counts = Hash.new(0)
		@estudiantes.each { |estudiante| counts[estudiante.calificacion] += 1 }
		a = counts.max_by {|k,v| v} #k,v es key value, [1] es el value mas alto capo
		counts.select {|k,v| v == a[1]}  
	end

	def ciudades_excepto_la_plata ()
		@estudiantes.map(&:ciudad_natal).reject {|ciudad_natal| ciudad_natal.downcase == "la plata"}.uniq
	end

	def edad_mas_frecuente ()
		counts = Hash.new(0)
		@estudiantes.each { |estudiante| counts[estudiante.edad] += 1 }
		a = counts.max_by {|k,v| v} #k,v es key value, [1] es el value mas alto capo
		counts.select {|k,v| v == a[1]}  
	end
end
			 

antonios = []
antonios << Estudiante.new("antonioracchi", 4, 104, "la plata", 10)
antonios << Estudiante.new("antoniorachi", 4, 102, "aloise", 7)
antonios << Estudiante.new("antonio2", 4, 3, "la plata", 7)
antonios << Estudiante.new("antonio3", 4, 104, "fravega", 10)
antonios << Estudiante.new("antonioperez", 4, 45, "la plata", 2)


programacion = Curso.new("programacion")

programacion.agregar(antonios)
p programacion

#programacion.resetear_notas 
#p programacion

p programacion.cantidad_de_estudiantes_inscriptos

p programacion.estudiantes_aprobados

p programacion.existe_estudiante?("antoniojose")

programacion.porcentaje_aprobados

programacion.promedio_calificaciones

programacion.estudiantes_no_platenses

puts programacion.calificacion_mas_frecuente 

p programacion.ciudades_excepto_la_plata

p programacion.edad_mas_frecuente