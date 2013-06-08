class Status < ActiveRecord::Base
  attr_accessible :name

  validators :name, presence: true
end
