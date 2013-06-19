class Guest < ActiveRecord::Base
  belongs_to :party

  attr_accessible :age, :name, :party_id, :attending, :primary_guest

  # Our validators
  validates :name, :age, :party_id, presence: true

  # Returns the current Status description(name) for the Party
  def isChildWithNoName?
    self.name === 'child';
  end

end
