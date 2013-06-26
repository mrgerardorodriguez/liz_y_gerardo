class ChangeDefaultToGuests < ActiveRecord::Migration
  def up
    change_column(:guests, :name, :string, null: true)
  end

  def down
    change_column(:guests, :name, :string, null: false, default: "child")
  end
end
