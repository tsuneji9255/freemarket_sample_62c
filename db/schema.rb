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


ActiveRecord::Schema.define(version: 20200212102636) do

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "nickname",        null: false
    t.string  "email",           null: false
    t.string  "password",        null: false
    t.string  "first_name",      null: false
    t.string  "last_name",       null: false
    t.string  "first_name_kana", null: false
    t.string  "last_name_kana",  null: false
    t.integer "tel",             null: false
    t.integer "birth_year"
    t.integer "birth_month"
    t.integer "birth_day"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["password"], name: "index_users_on_password", unique: true, using: :btree
    t.index ["tel"], name: "index_users_on_tel", unique: true, using: :btree
  end

  create_table "pictures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
