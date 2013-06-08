class Party < ActiveRecord::Base
  has_many :guests
  has_one :status

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  # Our additional attributes
  attr_accessible :name, :username, :status_id

  # Our validators
  validates :username, :name, :status_id, :presence => true

  # If you don’t want to require an email address, 
  # simply define an email_required? function in your model, and have it return false.
  # https://github.com/plataformatec/devise/wiki/How-To:-Allow-users-to-sign-in-with-something-other-than-their-email-address
  def email_required?
    false
  end

  def status
    Status.find(self.status_id).name
  end
end
