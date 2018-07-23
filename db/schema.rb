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

ActiveRecord::Schema.define(:version => 20180723063636) do

  create_table "addresses", :force => true do |t|
    t.string   "company_name"
    t.string   "empid"
    t.integer  "doorno"
    t.string   "street"
    t.string   "city"
    t.string   "district"
    t.string   "state"
    t.string   "pincode"
    t.string   "country"
    t.string   "address_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "area"
  end

  create_table "ar_internal_metadata", :primary_key => "key", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "educational_details", :force => true do |t|
    t.string   "company_name"
    t.string   "empid"
    t.string   "education_type"
    t.string   "institution"
    t.string   "stream"
    t.string   "percentage"
    t.string   "location"
    t.string   "year_completion"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "employment_details", :force => true do |t|
    t.string   "company_name"
    t.string   "empid"
    t.string   "comp_name"
    t.date     "from_date"
    t.date     "to_date"
    t.string   "designation"
    t.string   "experience"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "insurances", :force => true do |t|
    t.string   "company_name"
    t.string   "empid"
    t.string   "relation_type"
    t.string   "name"
    t.date     "dob"
    t.string   "gender"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "permissions", :force => true do |t|
    t.boolean  "personal_details"
    t.boolean  "finance_details"
    t.boolean  "insurance_details"
    t.boolean  "education_details"
    t.boolean  "employment_details"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "company_name"
    t.integer  "empid"
    t.string   "department"
  end

  create_table "personal_details", :force => true do |t|
    t.string   "company_name"
    t.string   "empid"
    t.string   "name"
    t.string   "email"
    t.string   "gender"
    t.date     "dob"
    t.string   "contact"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "pfs", :force => true do |t|
    t.string   "company_name"
    t.string   "empid"
    t.string   "aadhar"
    t.string   "pan"
    t.string   "acc_number"
    t.string   "ifsc"
    t.string   "bank_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",      :null => false
    t.string   "encrypted_password",     :default => "",      :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,       :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.string   "company_name"
    t.string   "login_type",             :default => "admin"
    t.string   "name"
    t.integer  "empid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
