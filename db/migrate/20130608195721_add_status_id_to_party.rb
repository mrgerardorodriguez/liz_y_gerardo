class AddStatusIdToParty < ActiveRecord::Migration
  def change
    add_column :parties, :status_id, :integer, null: false, default: 1
  end
end
