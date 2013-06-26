class AddBlankNameToGuests < ActiveRecord::Migration
  def change
    change_column :guests, :name, :string, default: ""
  end
end
