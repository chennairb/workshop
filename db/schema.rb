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

ActiveRecord::Schema.define(version: 20150115081949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coaches", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "twitter_handle"
    t.boolean  "attended_meetups"
    t.boolean  "living_in_chennai"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "edition_id"
  end

  add_index "coaches", ["edition_id"], name: "index_coaches_on_edition_id", using: :btree

  create_table "editions", force: :cascade do |t|
    t.string   "name"
    t.datetime "date_of_event"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string   "name",                        null: false
    t.string   "email",                       null: false
    t.boolean  "attended_meetups"
    t.string   "student_or_employed"
    t.boolean  "living_in_chennai"
    t.boolean  "have_ruby_configured_laptop"
    t.text     "remarks"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "profession"
    t.integer  "edition_id"
  end

  add_index "participants", ["edition_id"], name: "index_participants_on_edition_id", using: :btree
  add_index "participants", ["email"], name: "index_participants_on_email", using: :btree

  add_foreign_key "coaches", "editions"
  add_foreign_key "participants", "editions"
end
