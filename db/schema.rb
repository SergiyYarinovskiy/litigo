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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140818191835) do

  create_table "cases", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "number"
    t.string   "doc_number"
    t.string   "judge"
    t.string   "court"
    t.string   "plaintiff"
    t.string   "defendant"
    t.boolean  "corporation"
    t.string   "status"
    t.string   "creation_date"
    t.string   "date_closed"
    t.string   "main_type"
    t.string   "sub_type"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incidents", force: true do |t|
    t.integer  "case_id"
    t.string   "date_of_incident"
    t.string   "statute_of_limitations"
    t.string   "liability"
    t.boolean  "alcohol"
    t.boolean  "weather_factor"
    t.float    "damage"
    t.boolean  "airbag"
    t.float    "speed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "police_report_file_name"
    t.string   "police_report_content_type"
    t.integer  "police_report_file_size"
    t.datetime "police_report_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
