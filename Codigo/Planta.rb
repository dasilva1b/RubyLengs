#!/usr/bin/ruby

class Planta

  attr_reader :ciclos, :almacen, :silosCebada, :molino, :pailaMezcla, :cuba, :pailaCoccion,
              :tanquePreclarif, :enfriador, :tcc, :filtroCerveza, :tanqueFiltroCerveza,
              :llenadora

  def initialize(ciclos, lupula, cebada, mezcla, levadura)

    @ciclos = ciclos
    @almacen = Almacen.new(lupula,cebada,mezcla,levadura)
    @silosCebada = SilosCebada.new
    @molino = Molino.new
    @pailaMezcla = Paila_Mezcla.new
    @cuba = Cuba_Filtracion.new
    @pailaCoccion = Paila_Coccion.new
    @tanquePreclarif = Tanque_Preclarificador.new 
    @enfriador = Enfriador.new
    @tcc = TCC.new
    @filtroCerveza = Filtro_Cerveza.new
    @tanqueFiltroCerveza = Tanque_Cerveza.new
    @llenadora = Llenadora.new

  end
	
  def activar()

    i=0

    print "Inicio planta\n"

    while(i<@ciclos)

      i+=1;
      print "Ciclo numero",i,"\n"

      #Inicio de procesamiento

      @silosCebada.producir(@almacen)
      @silosCebada.imprimir()
      @molino.producir(@almacen)
      @molino.imprimir()
      @pailaMezcla.producir(@almacen)
      @pailaMezcla.imprimir()
      @cuba.producir(@almacen)
      @cuba.imprimir()
      @pailaCoccion.producir(@almacen)
      @pailaCoccion.imprimir()
      @tanquePreclarif.producir(@almacen)
      @tanquePreclarif.imprimir()
      @enfriador.producir(@almacen)
      @enfriador.imprimir()
      @tcc.producir(@almacen)
      @tcc.imprimir()
      @filtroCerveza.producir(@almacen)
      @filtroCerveza.imprimir()
      @tanqueFiltroCerveza.producir(@almacen)
      @tanqueFiltroCerveza.imprimir()
      @llenadora.producir(@almacen)     
      @llenadora.imprimir()     




    end

    @almacen.imprimir()


  end



end
