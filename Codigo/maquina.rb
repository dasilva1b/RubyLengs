#!/usr/bin/ruby

#
# Clase que contiene las maquinas por las que esta compuesto el sistema
#
class Maquina
	
	#Atributos de la maquina
	attr_reader :nombre, :estado, :insumos, :cant_max, :porcentaje, :desecho, 
				:ciclos  

	def initialize()
	    @nombre = ""
	    @estado = "inactiva"
	    @cant_max = 0 
	    @desecho = 0
	    @ciclos = 0
	    @insumos = []
	    @porcentaje = []
	    @cantidadInsumos = []
	end

	#
	# Imprime los detalles de la maquina
	#
	def imprimir_maquina()
		print "Maquina: ", @nombre, "\n"
		print "Estado: ", @estado, "\n"
		if (@estado == "inactiva" || @estado == "llena")
			print "Insumos:\n"
			imprimirInsumos()
		end
	end
	
	#
	# Imprime los insumos de una maquina
	#
	def imprimirInsumos()
	    for i in (0..insumos.size)
	    	print @insumos[i],"\t", @cantidadInsumos[i],"\n"
	    end
  	end

end

#
# Especificacion de todas las maquinas que contiene el sistema
#

# Silos de Cebada
class Silos_Cevada < Maquina

  	def initialize()  
    	super
    	@nombre = "Silos de Cebada"
    	@insumos = ["C"]
    	@porcentaje = [100]
    	@cantidadInsumos = [0]
    	@cant_max = 400 
  	end

  	def producir(cant_cevada)
  		if cant_cevada > @cant_max
  			@cantidadInsumos[0] = cant_max
  			cant_cevada = cant_cevada - cant_max
  		else
  			@cantidadInsumos[0] = cant_cevada
  			cant_cevada = 0
  		end

  		return cant_cevada, @cantidadInsumos[0]
  	end

end

# Molino
class Molino < Maquina

  	def initialize()  
    	super
    	@nombre = "Molino"
    	@insumos = ["PA"]
    	@porcentaje = [100]
    	@cantidadInsumos = [0]
    	@cant_max = 100 
    	@desecho = 2
    	@ciclos = 1
  	end

  	def producir(pa_anterior)
  		if pa_anterior > @cant_max
  			@cantidadInsumos[0] = cant_max
   		else
  			@cantidadInsumos[0] = pa_anterior
  		end

  		return (@cantidadInsumos[0] - (@cantidadInsumos[0] * 0.2))
  	end

end

# Paila de Mezcla
class Paila_Mezcla < Maquina

	def initialize()  
  		super
	  	@nombre = "Paila de Mezcla"
	  	@insumos = ["M","PA"]
	  	@cantidadInsumos = [0,0]
	  	@porcentaje = [40,60]
	  	@cant_max = 150
	  	@ciclos = 2 
	end 

end

# Cuba de Filtracion
class Cuba_Filtracion < Maquina

  	def initialize()  
    	super
    	@nombre = "Cuba de Filtracion"
    	@insumos = ["PA"]
    	@porcentaje = [100]
    	@cantidadInsumos = [0]
    	@cant_max = 135 
    	@desecho = 35
    	@ciclos = 2
  	end

  	def producir(pa_anterior)
  		if pa_anterior > @cant_max
  			@cantidadInsumos[0] = cant_max
   		else
  			@cantidadInsumos[0] = pa_anterior
  		end

  		return (@cantidadInsumos[0] - (@cantidadInsumos[0] * 0.35))
  	end

end

# Paila de Coccion
class Paila_Coccion < Maquina

  	def initialize()  
    	super
    	@nombre = "Paila de Coccion"
    	@insumos = ["PA","L"]
    	@porcentaje = [97.5,2.5]
    	@cantidadInsumos = [0,0]
    	@cant_max = 70 
    	@desecho = 10
    	@ciclos = 3
  	end

end

# Tanque preclarificador
class Tanque_Preclarificador < Maquina

  	def initialize()  
    	super
    	@nombre = "Tanque preclarificador"
    	@insumos = ["PA"]
    	@porcentaje = [100]
    	@cantidadInsumos = [0]
    	@cant_max = 35 
    	@desecho = 1
    	@ciclos = 1
  	end

  	def producir(pa_anterior)
  		if pa_anterior > @cant_max
  			@cantidadInsumos[0] = cant_max
   		else
  			@cantidadInsumos[0] = pa_anterior
  		end

  		return (@cantidadInsumos[0] - (@cantidadInsumos[0] * 0.01))
  	end

end

# Enfriador
class Enfriador < Maquina

  	def initialize()  
    	super
    	@nombre = "Enfriador"
    	@insumos = ["PA"]
    	@porcentaje = [100]
    	@cantidadInsumos = [100]
    	@cant_max = 60 
    	@desecho = 100
    	@ciclos = 2
  	end

  	def producir(pa_anterior)
  		if pa_anterior > @cant_max
  			@cantidadInsumos[0] = cant_max
   		else
  			@cantidadInsumos[0] = pa_anterior
  		end

  		return 0
  	end

end

# TCC
class TCC < Maquina

	def initialize()  
	  	super
	  	@nombre = "TCC"
	  	@insumos = ["PA","V"]
	  	@porcentaje = [99,1]
	  	@cantidadInsumos = [0,0]
	  	@cant_max = 200
	  	@desecho = 10
	  	@ciclos = 10 
	end
  	
end

# Filtro de Cerveza
class Filtro_Cerveza < Maquina

	def initialize()  
	  	super
	  	@nombre = "Filtro de Cerveza"
	  	@insumos = ["PA"]
	  	@porcentaje = [100]
	  	@cantidadInsumos = [0]
	  	@cant_max = 100
	  	@ciclos = 1
	end

	def producir(pa_anterior)
  		if pa_anterior > @cant_max
  			@cantidadInsumos[0] = cant_max
   		else
  			@cantidadInsumos[0] = pa_anterior
  		end

  		return @cantidadInsumos[0]
  	end

  	
end

# Tanques para Cerveza Filtrada
class Tanque_Cerveza < Maquina

	def initialize()  
	  	super
	  	@nombre = "Tanques para Cerveza Filtrada"
	  	@insumos = ["PA"]
	  	@cantidadInsumos = [0]
	  	@porcentaje = [100]
	  	@cant_max = 100
	end

  	def producir(pa_anterior)
  		if pa_anterior > @cant_max
  			@cantidadInsumos[0] = cant_max
   		else
  			@cantidadInsumos[0] = pa_anterior
  		end

  		return @cantidadInsumos[0]
  	end

  	
end

# Llenadora y Tapadora
class Llenadora < Maquina

	def initialize()  
	  	super
	  	@nombre = "Llenadora y Tapadora"
	  	@insumos = ["PA"]
	  	@cantidadInsumos = [0]
	  	@porcentaje = [100]
	  	@cant_max = 50
	  	@ciclos = 2 
	end

	def producir(pa_anterior)
  		if pa_anterior > @cant_max
  			@cantidadInsumos[0] = cant_max
   		else
  			@cantidadInsumos[0] = pa_anterior
  		end

  		return @cantidadInsumos[0]
  	end

end


# TEST
#b = Silos_Cevada.new
#b.imprimir_maquina
#cevada, pa = b.producir(4000)
#puts cevada
#puts pa

# END maquina.rb
