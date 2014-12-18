#encoding: UTF-8
require_relative "naranjero/version"

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
        @mutex = Mutex.new
        cantidadProduccion
      end
      
      def uno_mas
          cadena = ""
          @altura += ALTURAANYO
          @edad += 1
          if @edad == MUERTE
              cadena = "Lo sentimos el árbol ha muerto"
              @produccion = 0
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
      def recolectar
          Thread.new do 
           10.times do
            p recolectar_una
           end
           
          end
        
        
      end
      def crecer
        Thread.new do 
           10.times do
            p uno_mas
           end
          
        end
        
      end 
      
       
      
    end
  
  
  
end


a = Naranjero::Arbol.new(12.5,90)
p a.recolectar
p a.crecer