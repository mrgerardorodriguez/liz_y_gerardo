class DropStatusTable < ActiveRecord::Migration
  def up
    drop_table :statuses
  end

  def down
    create_table "statuses", :force => true do |t|
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
      t.string   "name",       :null => false
    end
  end
end
