#!/usr/bin/ruby

load 'Almacen.rb'

#
# Clase que contiene las maquinas por las que esta compuesto el sistema
#
class Maquina
	
	#Atributos de la maquina
	attr_reader :nombre, :estado, :insumos, :cant_max, :porcentaje, :desecho, 
				      :ciclos, :ciclos_realizados

	def initialize()
	    @nombre = ""
	    @estado = "inactiva"
	    @cant_max = 0 
	    @desecho = 0
	    @ciclos = 0
      @ciclos_realizados = 0
	    @insumos = []
	    @porcentaje = []
	    @cantidadInsumos = []
	end

  def mapear(nombreMaquina)
      r = case nombreMaquina
              when "Silos de Cebada" then ("producto_silos_cebada")
              when "Molino" then ("producto_molino")
              when "Paila de Mezcla" then ("producto_paila_mezcla")
              when "Cuba de Filtracion" then ("producto_cuba_filtracion")
              when "Paila de Coccion" then ("producto_paila_coccion")
              when "Tanque preclarificador" then ("producto_tanque_preclarificador")
              when "Enfriador" then ("producto_enfriador")
              when "TCC" then ("producto_tcc")
              when "Filtro de Cerveza" then ("producto_filtro_cerveza")
              when "Tanques para Cerveza Filtrada" then ("producto_tanque_cerveza")
              when "Llenadora y Tapadora" then ("cerveza")
          end
  end

  def producir(almacen)
    if (@estado == "inactiva")
      for i in (0..insumos.size)
          c = (@porcentaje[i]*@cant_max - @cantidadInsumos[i])
          if (c!=0)
            r = almacen.traer(@insumos[i],c)
            @cantidadInsumos[i] += r
          end
      end
      total = 0
      for i in (0..insumos.size)
          total +=  @cantidadInsumos[i]
      end
      if (total == @cant_max)
          @estado = "llena"
      end

    elsif (@estado == "llena")
      @estado == "procesando"

    elsif (@estado == "procesando")
      if (@ciclos == @ciclos_realizados)
        @estado = "en espera"
      else
        @ciclos -= 1
      end

    elsif (@estado == "en espera")
      for i in (0..insumos.size)
         almacen.sumar(insumos[i],cantidadInsumos[i])
         cantidadInsumos[i] = 0
      end

      n = mapear(@nombre)
      t = almacen.obtener_insumo(n)
      if (t == 0 || n == "cerveza")
          @estado = "inactiva"
          @ciclos_realizados = 0
      end  
    end
  end

	#
	# Imprime los detalles de la maquina
	#
	def imprimir()
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
class Silos_Cebada < Maquina

  	def initialize()  
    	super
    	@nombre = "Silos de Cebada"
    	@insumos = ["cebada"]
    	@porcentaje = [1]
    	@cantidadInsumos = [0]
    	@cant_max = 400 
  	end

end

# Molino
class Molino < Maquina

  	def initialize()  
    	super
    	@nombre = "Molino"
    	@insumos = ["producto_silos_cebada"]
    	@porcentaje = [1]
    	@cantidadInsumos = [0]
    	@cant_max = 100 
    	@desecho = 0.02
    	@ciclos = 1
  	end

end

# Paila de Mezcla
class Paila_Mezcla < Maquina

	def initialize()  
  		super
	  	@nombre = "Paila de Mezcla"
	  	@insumos = ["arroz_maiz","producto_molino"]
	  	@cantidadInsumos = [0,0]
	  	@porcentaje = [0.40,0.60]
	  	@cant_max = 150
	  	@ciclos = 2 
	end 

end

# Cuba de Filtracion
class Cuba_Filtracion < Maquina

  	def initialize()  
    	super
    	@nombre = "Cuba de Filtracion"
    	@insumos = ["producto_paila_mezcla"]
    	@porcentaje = [1]
    	@cantidadInsumos = [0]
    	@cant_max = 135 
    	@desecho = 0.35
    	@ciclos = 2
  	end

end

# Paila de Coccion
class Paila_Coccion < Maquina

  	def initialize()  
    	super
    	@nombre = "Paila de Coccion"
    	@insumos = ["producto_cuba_filtracion","lupulo"]
    	@porcentaje = [0.975,0.025]
    	@cantidadInsumos = [0,0]
    	@cant_max = 70 
    	@desecho = 0.10
    	@ciclos = 3
  	end

end

# Tanque preclarificador
class Tanque_Preclarificador < Maquina

  	def initialize()  
    	super
    	@nombre = "Tanque preclarificador"
    	@insumos = ["producto_paila_coccion"]
    	@porcentaje = [1]
    	@cantidadInsumos = [0]
    	@cant_max = 35 
    	@desecho = 0.01
    	@ciclos = 1
  	end

end

# Enfriador
class Enfriador < Maquina

  	def initialize()  
    	super
    	@nombre = "Enfriador"
    	@insumos = ["producto_tanque_preclarificador"]
    	@porcentaje = [1]
    	@cantidadInsumos = [100]
    	@cant_max = 60 
    	@ciclos = 2
  	end

end

# TCC
class TCC < Maquina

	def initialize()  
	  	super
	  	@nombre = "TCC"
	  	@insumos = ["producto_enfriador","levadura"]
	  	@porcentaje = [0.99,0.01]
	  	@cantidadInsumos = [0,0]
	  	@cant_max = 200
	  	@desecho = 0.10
	  	@ciclos = 10 
	end
  	
end

# Filtro de Cerveza
class Filtro_Cerveza < Maquina

	def initialize()  
	  	super
	  	@nombre = "Filtro de Cerveza"
	  	@insumos = ["producto_tcc"]
	  	@porcentaje = [1]
	  	@cantidadInsumos = [0]
	  	@cant_max = 100
	  	@ciclos = 1
	end
  	
end

# Tanques para Cerveza Filtrada
class Tanque_Cerveza < Maquina

	def initialize()  
	  	super
	  	@nombre = "Tanques para Cerveza Filtrada"
	  	@insumos = ["producto_filtro_cerveza"]
	  	@cantidadInsumos = [0]
	  	@porcentaje = [1]
	  	@cant_max = 100
	end
  	
end

# Llenadora y Tapadora
class Llenadora < Maquina

	def initialize()  
	  	super
	  	@nombre = "Llenadora y Tapadora"
	  	@insumos = ["producto_tanque_cerveza"]
	  	@cantidadInsumos = [0]
	  	@porcentaje = [1]
	  	@cant_max = 50
	  	@ciclos = 2 
	end

end

# END Maquina.rb
