class Status < ActiveRecord::Base
  belongs_to :party

  attr_accessible :name

  validates :name, presence: true
end
