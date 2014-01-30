#!/usr/bin/ruby

load 'maquina.rb'

#
# Planta de produccion de cervezas 
#
class Planta

	#Atributos de la maquina
	attr_reader :num_ciclos, :cant_cevada, :cant_arroz_maiz, :cant_levadura, 
				:cant_lupulo, :cerveza_total

	def initialize(num_ciclos, cant_cevada, cant_arroz_maiz, cant_levadura, 
					cant_lupulo)
		@num_ciclos = num_ciclos
		@cant_cevada = cant_cevada
		@cant_arroz_maiz = cant_arroz_maiz
		@cant_levadura = cant_levadura
		@cant_lupulo = cant_lupulo
		@cerveza_total = 0

		print "Inicio Planta\n" 
	end
	
	#
	# Imprime el ciclo
	#
	def imprimir_ciclo(maquina,ciclo)
		print "Inicio ciclo ", ciclo, "\n"
		maquina.imprimir_maquina
		#imprimir_cervezas()
		print "Fin ciclo ", ciclo, "\n"
	end

	#
	# Imprime las cervezas salientes
	#
	def imprimir_cervezas()
		print "Cervezas salientes: ", @cerveza_total, "\n"
	end

	#
	# Imprime el final del proceso
	#
	def imprimir_final()
		print "Cerveza total: ", @cerveza_total, "\n"		
		print "Cebada sobrante: ", @cant_cevada, "\n"
		print "Lupulo sobrante: ", @cant_lupulo, "\n"
		print "Levadura sobrante: ", @cant_levadura, "\n"
		print "Mezcla Arroz/Maiz sobrante: ", @cant_arroz_maiz, "\n"
	end

	#def producir()

end

# TEST

#b = Paila_Mezcla.new
#e = Planta.new(1,2,3,4,5)
#e.imprimir_ciclo(b)

#END planta.rb
