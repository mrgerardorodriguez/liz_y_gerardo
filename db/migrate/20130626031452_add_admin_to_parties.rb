class AddAdminToParties < ActiveRecord::Migration
  def change
    add_column :parties, :is_admin, :boolean, null: false, default: false
  end
end
