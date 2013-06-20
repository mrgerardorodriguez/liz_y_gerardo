class ChangeNameNullableToGuest < ActiveRecord::Migration
  def change
    change_column :guests, :name, :string, null: true
  end
end
