#!/usr/bin/ruby
load 'Almacen.rb'
load 'Maquina.rb'
# Clase planta que modela el centro de fabricacion de cerveza. Contiene una instancia
# de Maquina por cada maquina necesaria para producir cerveca segun lo indicado
# en el enunciado.

class Planta

  attr_reader :ciclos, :almacen, :silosCebada, :molino, :pailaMezcla, :cuba, :pailaCoccion,
              :tanquePreclarif, :enfriador, :tcc, :filtroCerveza, :tanqueFiltroCerveza,
              :llenadora

#   Constructor de la clase. Inicia todas las maquinas y el almacen
  def initialize(ciclos, lupula, cebada, mezcla, levadura)

    @ciclos = ciclos
    @almacen = Almacen.new(lupula,cebada,mezcla,levadura)
    @silosCebada = Silos_Cebada.new
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
	
  #Metodo en el cual se realiza la fabricacion de cerveza. En cada iteracion
  #se llama al metodo producir de cada maquina. Dicho metodo es el que se encarga
  #de realizar lo que la maquina deba hacer segun su estado y el inventario
  #que se encuentre en el almacen.
  def activar()

    i=0

    print "Inicio planta\n"
    while(i < @ciclos)

      i+=1;
      print "---------->Ciclo numero",i,"<---------------\n"

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

    #Despues de haber terminado de fabricar, imprimimos lo que haya quedado
    #en el almacen
    @almacen.imprimir()

  end



end
