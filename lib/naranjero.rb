require "naranjero/version"

module Naranjero
  
  ARBOLPRODUCE = 5 
  NARANJAS = 10
  
  class Arbol
      
      def initialize(altura=0,edad=0)
        @altura = altura
        @edad = edad
        if(@edad > ARBOLPRODUCE)
            @produccion = @edad * NARANJAS
        else
            @produccion = 0
        end
      end
      
  end
  
  
  
end
