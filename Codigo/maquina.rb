#
# Clase que contiene las maquinas por las que esta compuesto
# el sistema
#
class Maquina
	attr_reader :nombre, :estado, :insumos, :cant_max, :porcentaje, :desecho, :ciclos  

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

	#abstract procesar()

	def imprimir()
		print "Maquina: ",@nombre,"\n"
		print "Estado: ",@estado,"\n"
	end
	
	def imprimirInsumos()
    for i in (0..insumos.size)
      print @insumos[i], " ", @cantidadInsumos[i],"\n"
    end
  end  

end

class Silos_Cevada < Maquina
  	def initialize()  
    	super
    	@nombre = "Silos de Cebada"
    	@insumos = ["C"]
    	@porcentaje = [100]
    	@cantidadInsumos = [0]
    	@cant_max = 400 
  	end

end

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

end


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

end

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

end

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

end

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
  	
end

class Tanque_Cerveza < Maquina
	def initialize()  
  	super
  	@nombre = "Tanques para Cerveza Filtrada"
  	@insumos = ["PA"]
  	@cantidadInsumos = [0]
  	@porcentaje = [100]
  	@cant_max = 100
	end
  	
end
 
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
  	
end



 
b = Silos_Cevada.new
puts b.insumos  
puts b.cant_max  
puts b.porcentaje
puts b.desecho
puts b.ciclos
b.imprimir
b.imprimirInsumos

p = Tanque_Cerveza.new
p.imprimir
p.imprimirInsumos





