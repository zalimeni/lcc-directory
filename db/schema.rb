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

ActiveRecord::Schema.define(version: 20140308055159) do

  create_table "families", force: true do |t|
    t.integer  "head_id"
    t.date     "anniversary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "preferred_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "postal_code"
    t.string   "email"
    t.string   "mobile_phone"
    t.string   "home_phone"
    t.string   "work_phone"
    t.integer  "primary_phone"
    t.date     "birthday"
    t.integer  "family_id"
    t.integer  "spouse_id"
    t.boolean  "directory_public"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",            default: false
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true
  add_index "members", ["remember_token"], name: "index_members_on_remember_token"

end
