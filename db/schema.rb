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

ActiveRecord::Schema.define(version: 20131206160851) do

  create_table "analyses", force: true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "analysis_executions", force: true do |t|
    t.integer  "duration"
    t.integer  "analysis_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "onion_groups", force: true do |t|
    t.integer  "analysis_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "onions", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "onion_group_id"
  end

  create_table "register_executions", force: true do |t|
    t.integer  "day_number"
    t.integer  "analysis_execution_id"
    t.integer  "onion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "root_size",             precision: 8, scale: 2
  end

  create_table "root_register_executions", force: true do |t|
    t.integer  "register_execution_id"
    t.integer  "root_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roots", force: true do |t|
    t.decimal  "size",       precision: 8, scale: 2
    t.integer  "onion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
