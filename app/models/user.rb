class User < ActiveRecord::Base
  #attr_accessible :email, :password_digest
  
  has_many :authentications
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  # :confirmable,
  #devise :database_authenticatable, :registerable, 
   #      :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  
  
  
  attr_accessible :email, :password, :password_confirmation, :tipo
  
  
  #validates :email,   
    #        :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i } 
            
  validates_presence_of :password, :on => :create , :message=>"no son iguales"
 
  #attr_accessible :email, :password_digest
  has_secure_password

  validates_uniqueness_of :email , :message => "ya est&aacute; registrada <a href='/password_resets/new'>Ha olvidado su clave?</a>" #, :email
  validates_length_of     :password, :within => 6..40, :allow_nil => true, :message => "de contener al menos 6 caracteres"
  validates_format_of     :email, :with => /^[A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i, :message => "no es correcto"
  
  before_create { generate_token(:auth_token) }
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
  
  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end


end
