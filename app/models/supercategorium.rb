class Supercategorium < ActiveRecord::Base
  attr_accessible :id_categoria, :nombre
  
  
  validates_presence_of :id_categoria , :message => "es necesario"
  validates_presence_of :nombre , :message => "es necesario"
end
