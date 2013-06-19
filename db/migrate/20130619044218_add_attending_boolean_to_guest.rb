class AddAttendingBooleanToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :attending, :boolean, null: false, default: false
  end
end
