class Cupon < ActiveRecord::Base
  attr_accessible :cantidad, :descripcion, :descuento, :fechafin, :fechaini, :id_empresa, :id_supercategoria
  
   validates_presence_of :cantidad , :message => "es necesario"
  validates_presence_of :fechaini , :message => "falta"
  validates_presence_of :fechafin , :message => "falta"
  validates_presence_of :descripcion , :message => "describa el cupon"
  
  validates_presence_of :descuento , :message => "es necesario"
  
  validates_presence_of :id_empresa , :message => "error fatal"
  validates_presence_of :id_supercategoria , :message => "seleccione"
  
end
