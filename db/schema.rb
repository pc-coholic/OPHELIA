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

ActiveRecord::Schema.define(version: 20140531230306) do

  create_table "degrees", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fields", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "prename"
    t.string   "email"
    t.boolean  "infomailings"
    t.boolean  "newsmailings"
    t.boolean  "jobmailings"
    t.text     "comments"
    t.integer  "major_id"
    t.integer  "minor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["major_id"], name: "index_students_on_major_id"
  add_index "students", ["minor_id"], name: "index_students_on_minor_id"

  create_table "studies", force: true do |t|
    t.string   "name"
    t.integer  "ECTS"
    t.integer  "field_id"
    t.integer  "degree_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
