class Empresa < ActiveRecord::Base
  attr_accessible :estado, :id_categoria, :id_usuario, :imagen, :nombre, :id_departamento, :id_ciudad, :direccion, :pagina, :telefono, :descripcion, :horario

  has_and_belongs_to_many Promocion
  
  
  
  validates_presence_of :id_categoria, :on => :create , :message=>"seleccione"
  validates_presence_of :id_usuario, :on => :create , :message=>"error fatal"
  validates_presence_of :imagen, :on => :create , :message=>"seleccione su una imagen"
  validates_presence_of :nombre, :on => :create , :message=>"Escriba"
  validates_presence_of :id_departamento, :on => :create , :message=>"seleccione su departamento"
  validates_presence_of :id_ciudad, :on => :create , :message=>"seleccione su ciudad"
  validates_presence_of :direccion, :on => :create , :message=>"es necesaria"
  validates_length_of :descripcion, :within => 29..100, :allow_nil => true
  
  validates_length_of :telefono, :within => 5..15, :allow_nil => true, :message=>"telefono invalido"
  
  
  
  mount_uploader :imagen, EmpresaimageUploader
  
end
