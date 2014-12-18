#encoding: UTF-8
require "naranjero/version"

module Naranjero
  
  ANYOPRODUCE = 5 
  NARANJASANYO = 10
  MUERTE = 100
  ALTURAANYO = 0.25
  
  class Arbol
      attr_accessor :altura,:edad,:produccion
      def initialize(altura=0,edad=0)
        @altura = altura
        @edad = edad
        cantidadProduccion
      end
      
      def uno_mas
          cadena = ""
          @altura += ALTURAANYO
          @edad += 1
          if @edad == MUERTE
              cadena = "Lo sentimos el árbol ha muerto"
          else
              cantidadProduccion
              cadena = "El árbol ha crecido! Ya tiene #{@edad} años"
          end
          cadena
      end
      
      def recolectar_una
         cadena = ""
         if @produccion > 0
            @produccion -= 1
            cadena = "¡Uy que rica estaba la naranja!"
         else
             cadena = "Lo sentimos pero este árbol no tiene naranjas"
         end
         cadena
          
      end
      
      def cantidadProduccion
          if(@edad > ANYOPRODUCE)
            @produccion = @edad * NARANJASANYO
          else
            @produccion = 0
          end
      end
      
      
    end
  
  
  
end
