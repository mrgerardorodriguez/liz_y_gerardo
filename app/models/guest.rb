class Guest < ActiveRecord::Base
  belongs_to :party

  attr_accessible :age, :name, :party_id, :attending, :primary_guest

  # Our validators
  validates :age, :party_id, presence: true

end
