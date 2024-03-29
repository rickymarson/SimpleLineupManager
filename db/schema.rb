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

ActiveRecord::Schema.define(version: 20140331201839) do

  create_table "editors", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formats", force: true do |t|
    t.string   "format"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "producers", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stories", force: true do |t|
    t.string   "nickname"
    t.date     "date"
    t.time     "time"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "producer_id"
    t.integer  "writer_id"
    t.integer  "editor_id"
    t.integer  "theme_id"
    t.integer  "format_id"
    t.string   "status"
    t.datetime "start_time"
  end

  add_index "stories", ["editor_id"], name: "index_stories_on_editor_id"
  add_index "stories", ["format_id"], name: "index_stories_on_format_id"
  add_index "stories", ["producer_id"], name: "index_stories_on_producer_id"
  add_index "stories", ["theme_id"], name: "index_stories_on_theme_id"
  add_index "stories", ["writer_id"], name: "index_stories_on_writer_id"

  create_table "themes", force: true do |t|
    t.string   "theme"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "writers", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
