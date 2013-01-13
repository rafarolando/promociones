class Contact < ActiveRecord::Base
  attr_accessible :apellido, :asunto, :email, :mensaje, :nombre, :telefono
  validates_presence_of :nombre, :email  , :mensaje,  :asunto
end
