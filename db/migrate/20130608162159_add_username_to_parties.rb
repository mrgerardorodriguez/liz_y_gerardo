class AddUsernameToParties < ActiveRecord::Migration
  def change
    add_column  :parties, :username, :string,       :null => false
    add_index   :parties, :username,                :unique => true
 end
end
