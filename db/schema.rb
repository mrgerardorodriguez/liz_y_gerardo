# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130610021101) do

  create_table "guests", :force => true do |t|
    t.string   "name",       :default => "child", :null => false
    t.integer  "party_id",                        :null => false
    t.integer  "age",                             :null => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "guests", ["party_id"], :name => "index_guests_on_party_id"

  create_table "parties", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "name"
    t.string   "username",                                  :null => false
    t.boolean  "has_children",           :default => false
    t.integer  "status_id",              :default => 1,     :null => false
  end

  add_index "parties", ["email"], :name => "index_parties_on_email"
  add_index "parties", ["reset_password_token"], :name => "index_parties_on_reset_password_token", :unique => true
  add_index "parties", ["username"], :name => "index_parties_on_username", :unique => true

  create_table "statuses", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "statuses", ["name"], :name => "index_statuses_on_name"

end
