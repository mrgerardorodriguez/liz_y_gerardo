class CreateGuests < ActiveRecord::Migration
  def change
    
    # if ActiveRecord::Base.connection.tables.include?(:guests)
      drop_table :guests
    # end

    create_table :guests do |t|
      t.string :name, null: false
      t.integer :party_id, null: false
      t.integer :age, null: false

      t.timestamps
    end

    add_index :guests, :party_id
  end
end
