#encoding: UTF-8
require_relative "spec_helper"
require_relative "../lib/naranjero.rb"

describe Naranjero::Arbol do
   
    before :each do
        @naranjo = Naranjero::Arbol.new(0.5,2)
        
    end
    
    describe "#Plantación" do
       it "#Nuevo naranjero" do
           #Creación de un naranjero que tenga una altura de 1 metro, 4 años.
          naranjero = Naranjero::Arbol.new(1,4) 
       end
        
    end


end