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

ActiveRecord::Schema.define(version: 20171206181547) do

  create_table "goals", force: :cascade do |t|
    t.integer  "goal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runninglogs", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "trackruser_id"
    t.integer  "miles"
    t.datetime "rundate"
  end

  create_table "trackrusers", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "runninglog_id"
  end

  add_index "trackrusers", ["runninglog_id"], name: "index_trackrusers_on_runninglog_id"

end
