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

ActiveRecord::Schema.define(version: 20150309175928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "borings", force: :cascade do |t|
    t.integer  "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coach_editions", force: :cascade do |t|
    t.integer  "coach_id"
    t.integer  "edition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "coach_editions", ["coach_id"], name: "index_coach_editions_on_coach_id", using: :btree
  add_index "coach_editions", ["edition_id"], name: "index_coach_editions_on_edition_id", using: :btree

  create_table "coaches", force: :cascade do |t|
    t.string   "name",              null: false
    t.string   "email",             null: false
    t.string   "twitter_handle"
    t.boolean  "attended_meetups"
    t.boolean  "living_in_chennai"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "edition_participants", force: :cascade do |t|
    t.integer  "edition_id"
    t.integer  "participant_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "edition_participants", ["edition_id"], name: "index_edition_participants_on_edition_id", using: :btree
  add_index "edition_participants", ["participant_id"], name: "index_edition_participants_on_participant_id", using: :btree

  create_table "editions", force: :cascade do |t|
    t.string   "name",          null: false
    t.datetime "date_of_event", null: false
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
  end

  add_index "participants", ["email"], name: "index_participants_on_email", using: :btree

  add_foreign_key "coach_editions", "coaches", on_delete: :cascade
  add_foreign_key "coach_editions", "editions", on_delete: :cascade
  add_foreign_key "edition_participants", "editions", on_delete: :cascade
  add_foreign_key "edition_participants", "participants", on_delete: :cascade
end
