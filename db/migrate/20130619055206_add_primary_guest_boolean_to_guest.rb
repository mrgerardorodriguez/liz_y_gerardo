class AddPrimaryGuestBooleanToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :primary_guest, :boolean, null: false, default: true
  end
end
