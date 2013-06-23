class AddSpanishBooleanToParties < ActiveRecord::Migration
  def change
    add_column :parties, :spanish, :boolean, null: false, default: false
  end
end
