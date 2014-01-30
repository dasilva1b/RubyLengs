#!/usr/bin/ruby

load 'planta.rb'
load 'maquina.rb'

#
# Implementacion del sistema de creacion de la cerveza glaciar brebaje Stolz
#
class Main

	def main
		#Obtengo los 5 elementos del terminal
		num_ciclos = ARGV[0]
		cant_cevada = ARGV[1]
		cant_arroz_maiz = ARGV[2]
		cant_levadura = ARGV[3]
		cant_lupulo = ARGV[4]

		#Inicializo la planta
		Planta.new(num_ciclos, cant_cevada, cant_arroz_maiz, cant_levadura, 
					cant_lupulo)
	end

	# Main principal
	#print "CERVECERIA GLACIAR\n"
	t = Main.new
	t.main

end

#END main.rb
