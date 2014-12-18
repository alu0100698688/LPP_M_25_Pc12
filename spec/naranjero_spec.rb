#encoding: UTF-8
require_relative "spec_helper"
require_relative "../lib/naranjero.rb"

describe Naranjero::Arbol do
   
    before :each do
        @naranjo = Naranjero::Arbol.new(0.5,2)
        @naranjoViejo = Naranjero::Arbol.new(24.75,99)
    end
    
    describe "#Plantación" do
       it "#Nuevo naranjero" do
           #Creación de un naranjero que tenga una altura de 1 metro, 4 años.
          naranjero = Naranjero::Arbol.new(1,4) 
          expect(naranjero.edad).to eq(4)
          expect(naranjero.altura).to eq(1)
          expect(naranjero.produccion).to eq(0)
       end
        
    end
    describe "#Cambios en la edad del árbol" do
        
        it "#Incrementar edad y árbol sigue vivo" do
            expect(@naranjo.uno_mas).to eq("El árbol ha crecido! Ya tiene 3 años")
            
        end
        it "#Incrementar edad y muerte arbol" do
            expect(@naranjoViejo.uno_mas).to eq("Lo sentimos el árbol ha muerto") 
            expect(@naranjoViejo.produccion).to eq(0)
        end
   
    end
    
    describe "#recoger frutos" do
        it "#recoletar una naranja pero no tiene" do
           expect(@naranjo.recolectar_una).to eq("Lo sentimos pero este árbol no tiene naranjas") 
            
        end
        it "#recolectar una naranja y si tiene" do
            expect(@naranjoViejo.recolectar_una).to eq("¡Uy que rica estaba la naranja!")
        end
    end
    
    describe "#Métodos de los threads" do
       it "#Método crecer" do
            @naranjo.respond_to?("crecer").should be (true)  
       end
       it "#Método recolectar" do
            @naranjo.respond_to?("recolectar").should be (true)
       end
        
    end

end