class RemoveSpanishFromGuests < ActiveRecord::Migration
  def up
    remove_column :guests, :spanish
  end

  def down
    add_column :guests, :spanish, :boolean
  end
end
