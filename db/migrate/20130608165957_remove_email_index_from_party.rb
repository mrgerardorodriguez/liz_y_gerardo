class RemoveEmailIndexFromParty < ActiveRecord::Migration
  def up
    remove_index :parties, :email
    add_index :parties, :email, :unique => false
  end

  def down
    add_index :parties, :email, :unique => true
  end
end
