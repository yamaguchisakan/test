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

ActiveRecord::Schema.define(version: 20160526042004) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name",            null: false
    t.integer  "age",             null: false
    t.text     "email",           null: false
    t.string   "password_digest", null: false
    t.time     "reference_time",  null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "accounts", ["email"], name: "index_accounts_on_email", unique: true

  create_table "brands", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "price",      null: false
    t.float    "nicotin",    null: false
    t.float    "tar",        null: false
    t.integer  "maker_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "brands", ["maker_id"], name: "index_brands_on_maker_id"
  add_index "brands", ["name"], name: "index_brands_on_name", unique: true

  create_table "dayly_aggregations", force: :cascade do |t|
    t.date     "aggregation_day", null: false
    t.time     "avg_interval",    null: false
    t.float    "avg_number",      null: false
    t.float    "avg_price",       null: false
    t.integer  "account_id",      null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "dayly_aggregations", ["account_id"], name: "index_dayly_aggregations_on_account_id"

  create_table "makers", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "makers", ["name"], name: "index_makers_on_name", unique: true

  create_table "smokings", force: :cascade do |t|
    t.date     "smoke_date",     null: false
    t.time     "smoke_time",     null: false
    t.time     "smoke_interval", null: false
    t.float    "latitude",       null: false
    t.float    "longitude",      null: false
    t.integer  "tobacco_id",     null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "smokings", ["tobacco_id"], name: "index_smokings_on_tobacco_id"

  create_table "tobaccos", force: :cascade do |t|
    t.integer  "account_id", null: false
    t.integer  "brand_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tobaccos", ["account_id", "brand_id"], name: "index_tobaccos_on_account_id_and_brand_id", unique: true
  add_index "tobaccos", ["account_id"], name: "index_tobaccos_on_account_id"
  add_index "tobaccos", ["brand_id"], name: "index_tobaccos_on_brand_id"

end
