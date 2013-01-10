class Categorium < ActiveRecord::Base
  attr_accessible :id_ciudad, :nombre
       
  validates_presence_of :id_ciudad, :on => :create , :message=>"Error"
  validates_presence_of :nombre, :on=> :create, :message => "es necesario"
 
 
end
