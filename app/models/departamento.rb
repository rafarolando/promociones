class Departamento < ActiveRecord::Base
  attr_accessible :nombre
  
  
  validates_presence_of :nombre , :message => "es necesario"
end
