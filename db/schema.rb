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

ActiveRecord::Schema.define(version: 20160405010151) do

  create_table "activities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "activities_events", id: false, force: :cascade do |t|
    t.integer "event_id",    limit: 4, null: false
    t.integer "activity_id", limit: 4, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "user_id",     limit: 4
    t.text     "description", limit: 65535
    t.string   "url",         limit: 255
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address_1",  limit: 255
    t.string   "address_2",  limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.string   "zip",        limit: 255
    t.integer  "event_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "locations", ["event_id"], name: "fk_rails_6d9dbe77fc", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "url",        limit: 255
    t.string   "phone",      limit: 255
    t.text     "bio",        limit: 65535
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "organizations", ["user_id"], name: "fk_rails_7b93e0061c", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

  add_foreign_key "locations", "events"
  add_foreign_key "organizations", "users"
end
