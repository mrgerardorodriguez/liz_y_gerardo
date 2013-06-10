class ChangeColumnNameToGuest < ActiveRecord::Migration
  def up
    change_column(:guests, :name, :string, null: false, default: "child")
  end

  def down
    change_column(:guests, :name, :string, null: false)
  end
end
