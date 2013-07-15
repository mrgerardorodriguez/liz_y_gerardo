class AddVendorToParty < ActiveRecord::Migration
  def change
    add_column :parties, :is_vendor, :boolean, default: false
  end
end
