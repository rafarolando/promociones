class Ciudad < ActiveRecord::Base
  attr_accessible :nombre
  validates_presence_of :nombre, :message => "message"
end
