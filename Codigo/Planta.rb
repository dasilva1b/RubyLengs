#!/usr/bin/ruby

class Planta

  attr_reader :ciclos, :almacen, :silosCebada, :molino, :pailaMezcla, :cuba, :pailaCoccion,
              :tanquePreclarif, :enfriador, :tcc, :filtroCerveza, :tanqueFiltroCerveza,
              :llenadora

  def initialize(ciclos, lupula, cebada, mezcla, levadura)

    @ciclos = ciclos
    @almacen = Almacen.new(lupula,cebada,mezcla,levadura)
    @silosCebada = Maquina.new
    @molino = Maquina.new
    @pailaMezcla = Maquina.new
    @cuba = Maquina.new
    @pailaCoccion = Maquina.new
    @tanquePreclarif = Maquina.new 
    @enfriador = Maquina.new
    @tcc = Maquina.new
    @filtroCerveza = Maquina.new
    @tanqueFiltroCerveza = Maquina.new
    @llenadora = Maquina.new

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
