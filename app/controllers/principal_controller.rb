class PrincipalController < ApplicationController
  def index
    #@empresas = Empresa.all
    @empresas = Empresa.where(:estado=>"2")
    #@contador1 = Promocion.where(:id_supercategoria => "#{supercategoria.id}").count
  end
  def  categoriasindex
    #@empresas = Empresa.all
    
    #@contador1 = Promocion.where(:id_supercategoria => "#{supercategoria.id}").count
  end
  
 
end
