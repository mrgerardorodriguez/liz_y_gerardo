class AddSpanishBooleanToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :spanish, :boolean, null: false, default: false
  end
end
