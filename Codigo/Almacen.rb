#!/usr/bin/ruby

# Clase que modela el inventario que la empresa tiene en cualquier momento dado.
# Contiene una serie de enteros que representan lo que se tiene (en kilos) de
# cada producto.
class Almacen

	#Atributos del almacen
	attr_reader :cebada, :arroz_maiz, :levadura, :lupulo, :producto_silos_cebada,
				:producto_molino, :producto_paila_mezcla, :producto_cuba_filtracion,
				:producto_paila_coccion,:producto_tanque_preclarificador,
				:producto_enfriador,:producto_tcc,:producto_filtro_cerveza,
				:producto_tanque_cerveza,:cerveza

	def initialize(cant_cebada, cant_arroz_maiz, cant_levadura, cant_lupulo)
		@cebada = cant_cebada 
		@arroz_maiz = cant_arroz_maiz
		@levadura = cant_levadura
		@lupulo = cant_lupulo
		@producto_silos_cebada = 0
		@producto_molino = 0
		@producto_paila_mezcla = 0
		@producto_cuba_filtracion = 0
		@producto_paila_coccion = 0
		@producto_tanque_preclarificador = 0
		@producto_enfriador = 0
		@producto_tcc = 0
		@producto_filtro_cerveza = 0
		@producto_tanque_cerveza = 0
		@cerveza = 0
	end

	#
	# Obtiene insumos del almacen y lo actualiza
	#
	def traer_insumo(nombreInsumo, cantidad)
	  case nombreInsumo
		  when "cebada" then 
			  if (@cebada >= cantidad)
				  @cebada -= cantidad
				  resultado = cantidad
			  else
				  resultado = @cebada
				  @cebada = 0
			  end
			  return resultado
		  when "arroz_maiz" then
			  if (@arroz_maiz >= cantidad)
				  @arroz_maiz -= cantidad
				  resultado = cantidad
			  else
				  resultado = @arroz_maiz
				  @arroz_maiz = 0
			  end
			  return resultado
		  when "levadura" then
			  if (@levadura >= cantidad)
				  @levadura -= cantidad
				  resultado = cantidad
			  else
				  resultado = @levadura
				  @levadura = 0
			  end
			  return resultado
		  when "lupulo" then
			  if (@lupulo >= cantidad)
				  @lupulo -= cantidad
				  resultado = cantidad
			  else
				  resultado = @lupulo
				  @lupulo = 0
			  end
			  return resultado
		  when "producto_silos_cebada" then
			  if (@producto_silos_cebada >= cantidad)
				  @producto_silos_cebada -= cantidad
				  resultado = cantidad
			  else
				  resultado = @producto_silos_cebada
				  @producto_silos_cebada = 0
			  end
			  return resultado
		  when "producto_molino" then
			  if (@producto_molino >= cantidad)
				  @producto_molino -= cantidad
				  resultado = cantidad
			  else
				  resultado = @producto_molino
				  @producto_molino = 0
			  end
			  return resultado
		  when "producto_paila_mezcla" then
			  if (@producto_paila_mezcla >= cantidad)
				  @producto_paila_mezcla -= cantidad
				  resultado = cantidad
			  else
				  resultado = @producto_paila_mezcla
				  @producto_paila_mezcla = 0
			  end
			  return resultado
		  when "producto_cuba_filtracion" then
			  if (@producto_cuba_filtracion >= cantidad)
				  @producto_cuba_filtracion -= cantidad
				  resultado = cantidad
			  else
				  resultado = @producto_cuba_filtracion
				  @producto_cuba_filtracion = 0
			  end
			  return resultado
		  when "producto_paila_coccion" then
			  if (@producto_paila_coccion >= cantidad)
				  @producto_paila_coccion -= cantidad
				  resultado = cantidad
			  else
				  resultado = @producto_paila_coccion
				  @producto_paila_coccion = 0
			  end
			  return resultado
		  when "producto_tanque_preclarificador" then
			  if (@producto_tanque_preclarificador >= cantidad)
				  @producto_tanque_preclarificador -= cantidad
				  resultado = cantidad
			  else
				  resultado = @producto_tanque_preclarificador
				  @producto_tanque_preclarificador = 0
			  end
			  return resultado
		  when "producto_enfriador" then
			  if (@producto_enfriador >= cantidad)
				  @producto_enfriador -= cantidad
				  resultado = cantidad
			  else
				  resultado = @producto_enfriador
				  @producto_enfriador = 0
			  end
			  return resultado
		  when "producto_tcc" then
			  if (@producto_tcc >= cantidad)
				  @producto_tcc -= cantidad
				  resultado = cantidad
			  else
				  resultado = @producto_tcc
				  @producto_tcc = 0
			  end
			  return resultado
		  when "producto_filtro_cerveza" then
			  if (@producto_filtro_cerveza >= cantidad)
				  @producto_filtro_cerveza -= cantidad
				  resultado = cantidad
			  else
				  resultado = @producto_filtro_cerveza
				  @producto_filtro_cerveza = 0
			  end
			  return resultado
		  when "producto_tanque_cerveza" then
			  if (@producto_tanque_cerveza >= cantidad)
				  @producto_tanque_cerveza -= cantidad
				  resultado = cantidad
			  else
				  resultado = @producto_tanque_cerveza
				  @producto_tanque_cerveza = 0
			  end
			  return resultado
		  when "cerveza" then
			  if (@cerveza >= cantidad)
				  @cerveza -= cantidad
				  resultado = cantidad
			  else
				  resultado = @cerveza
				  @cerveza = 0
			  end
			  return resultado
	  end
	end

	#
	# Agrega una cantidad de un insumo en el almacen
	#
	def sumar_insumo(nombreInsumo, cantidad)
		print 'kkkkkkkkk'
		print "\n"
		print nombreInsumo,'-'
		print "\n"
		case nombreInsumo
			when "cebada" then (@cebada += cantidad)
			when "arroz_maiz" then (@arroz_maiz += cantidad)
			when "levadura" then (@levadura += cantidad)
			when "lupulo" then (@lupulo += cantidad)
			when "producto_silos_cebada" then 
				(@producto_silos_cebada += cantidad)
			when "producto_molino" then 
				(@producto_molino += cantidad)
			when "producto_paila_mezcla" then 
				(@producto_paila_mezcla += cantidad)
			when "producto_cuba_filtracion" then 
				(@producto_cuba_filtracion += cantidad)
			when "producto_paila_coccion" then 
				(@producto_paila_coccion += cantidad)
			when "producto_tanque_preclarificador" then 
				(@producto_tanque_preclarificador += cantidad)
			when "producto_enfriador" then 
				(@producto_enfriador += cantidad)
			when "producto_tcc" then (@producto_tcc += cantidad)
			when "producto_filtro_cerveza" then 
				(@producto_filtro_cerveza += cantidad)
			when "producto_tanque_cerveza" then 
				(@producto_tanque_cerveza += cantidad)
			when "cerveza" then (@cerveza += cantidad)
		end
	end


	#
	# Obtiene la cantidad de un insumo que hay en el almacen
	#
	def obtener_insumo(nombreInsumo)
		r=case nombreInsumo
			when "cebada" then (@cebada)
			when "arroz_maiz" then (@arroz_maiz)
			when "levadura" then (@levadura)
			when "lupulo" then (@lupulo)
			when "producto_silos_cebada" then 
				(@producto_silos_cebada)
			when "producto_molino" then 
				(@producto_molino)
			when "producto_paila_mezcla" then 
				(@producto_paila_mezcla)
			when "producto_cuba_filtracion" then 
				(@producto_cuba_filtracion)
			when "producto_paila_coccion" then 
				(@producto_paila_coccion)
			when "producto_tanque_preclarificador" then 
				(@producto_tanque_preclarificador)
			when "producto_enfriador" then 
				(@producto_enfriador)
			when "producto_tcc" then (@producto_tcc)
			when "producto_filtro_cerveza" then 
				(@producto_filtro_cerveza)
			when "producto_tanque_cerveza" then 
				(@producto_tanque_cerveza)
			when "cerveza" then (@cerveza)
		end
		print '>>>>>>>>>>>>>>>>>>>>>r es'
		print r
		return r
	end

	#
	# Imprime almacen
	#
	def imprimir()
		print "Cerveza Total: ", @cerveza, "\n"		
		print "Cebada Sobrante: ", @cebada, "\n"
		print "Lupulo Sobrante: ", @lupulo, "\n"
		print "Levadura Sobrante: ", @levadura, "\n"
		print "Mezcla Arroz Maiz Sobrante: ", @arroz_maiz, "\n"
	end


end

#END Almacen.rb
