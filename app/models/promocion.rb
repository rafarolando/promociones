class Promocion < ActiveRecord::Base
  attr_accessible :descripcion, :fechafin, :fechaini, :id_empresa, :nombre , :id_supercategoria




  validates_presence_of :descripcion , :message => "falta"
  validates_presence_of :fechaini , :message => "falta"
  validates_presence_of :fechafin , :message => "falta"
  validates_presence_of :id_empresa , :message => "error fatal"
  
  validates_presence_of :nombre , :message => "es necesario"
  
  validates_presence_of :id_supercategoria , :message => "seleccione"
  
  
end
