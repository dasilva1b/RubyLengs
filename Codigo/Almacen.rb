#!/usr/bin/ruby

#
# Almacen del sistema
#
class Almacen

	#Atributos del almacen
	attr_reader :cebada, :arroz_maiz, :levadura, :lupulo, :producto_silos_cebada,
				:producto_molino, :producto_paila_mezcla, :producto_cuba_filtracion,
				:producto_paila_coccion,:producto_tanque_preclarificador,
				:producto_enfriador,:producto_tcc,:producto_filtro_cerveza,
				:producto_tanque_cerveza,:cerveza

	def initialize(cant_cevada, cant_arroz_maiz, cant_levadura, cant_lupulo)
		@cebada = cant_cevada 
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
	# Verifica si en el almacen hay una cantidad de un insumo
	#
	def verificar_insumo(nombreInsumo, cantidad)
		resultado = case nombreInsumo
						when "cebada" then (@cebada >= cantidad)
						when "arroz_maiz" then (@arroz_maiz >= cantidad)
						when "levadura" then (@levadura >= cantidad)
						when "lupulo" then (@lupulo >= cantidad)
						when "producto_silos_cebada" then 
							(@producto_silos_cebada >= cantidad)
						when "producto_molino" then 
							(@producto_molino >= cantidad)
						when "producto_paila_mezcla" then 
							(@producto_paila_mezcla >= cantidad)
						when "producto_cuba_filtracion" then 
							(@producto_cuba_filtracion >= cantidad)
						when "producto_paila_coccion" then 
							(@producto_paila_coccion >= cantidad)
						when "producto_tanque_preclarificador" then 
							(@producto_tanque_preclarificador >= cantidad)
						when "producto_enfriador" then 
							(@producto_enfriador >= cantidad)
						when "producto_tcc" then (@producto_tcc >= cantidad)
						when "producto_filtro_cerveza" then 
							(@producto_filtro_cerveza >= cantidad)
						when "producto_tanque_cerveza" then 
							(@producto_tanque_cerveza >= cantidad)
						when "cerveza" then (@cerveza >= cantidad)
					end
	end

	#
	# Resta cantidad de un insumo
	#
	def restar_insumo(nombreInsumo, cantidad)
		case nombreInsumo
			when "cebada" then (@cebada -= cantidad)
			when "arroz_maiz" then (@arroz_maiz -= cantidad)
			when "levadura" then (@levadura -= cantidad)
			when "lupulo" then (@lupulo -= cantidad)
			when "producto_silos_cebada" then 
				(@producto_silos_cebada -= cantidad)
			when "producto_molino" then 
				(@producto_molino -= cantidad)
			when "producto_paila_mezcla" then 
				(@producto_paila_mezcla -= cantidad)
			when "producto_cuba_filtracion" then 
				(@producto_cuba_filtracion -= cantidad)
			when "producto_paila_coccion" then 
				(@producto_paila_coccion -= cantidad)
			when "producto_tanque_preclarificador" then 
				(@producto_tanque_preclarificador -= cantidad)
			when "producto_enfriador" then 
				(@producto_enfriador -= cantidad)
			when "producto_tcc" then (@producto_tcc -= cantidad)
			when "producto_filtro_cerveza" then 
				(@producto_filtro_cerveza -= cantidad)
			when "producto_tanque_cerveza" then 
				(@producto_tanque_cerveza -= cantidad)
			when "cerveza" then (@cerveza -= cantidad)
		end
	end

	#
	# Suma cantidad de un insumo
	#
	def sumar_insumo(nombreInsumo, cantidad)
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


# TEST

t = Almacen.new(10,20,30,40)
k = t.buscar_insumo("cebada",30)
puts k


#END Almacen.rb