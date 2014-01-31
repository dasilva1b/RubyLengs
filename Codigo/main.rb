#!/usr/bin/ruby
load 'Planta.rb'

#
# Implementacion del sistema de creacion de la cerveza glaciar brebaje Stolz
#
class Main

	def main
		#Obtengo los 5 elementos del terminal
		num_ciclos = Integer(ARGV[0])
		cant_cebada = Integer(ARGV[1])
		cant_arroz_maiz = Integer(ARGV[2])
		cant_levadura = Integer(ARGV[3])
		cant_lupulo = Integer(ARGV[4])
		print num_ciclos
		#Inicializo la planta
		planta=Planta.new(num_ciclos,cant_lupulo,cant_cebada,cant_arroz_maiz,cant_levadura)
		planta.activar()
	end

	# Main principal
	#print "CERVECERIA GLACIAR\n"
	t = Main.new
	t.main

end

#END main.rb
