class Guest < ActiveRecord::Base
  attr_accessible :age, :name, :party_id

  # Our validators
  validates :name, :age, :party_id, presence: true
end
