class Slider < ActiveRecord::Base
  attr_accessible :id_empresa, :image
  
    
  validates_presence_of :id_empresa , :message => "es necesario"
    
  validates_presence_of :image , :message => "seleccione"
  mount_uploader :image, SliderimageUploader
end
