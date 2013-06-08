class AddHasChildrenBooleantoParty < ActiveRecord::Migration
  def change
    add_column :parties, :has_children, :boolean, default: false
  end
end
