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

ActiveRecord::Schema.define(version: 20131213183302) do

  create_table "builds", force: true do |t|
    t.integer  "job_id"
    t.integer  "exit_status", null: false
    t.integer  "number",      null: false
    t.text     "output"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "builds", ["job_id"], name: "index_builds_on_job_id", using: :btree

  create_table "job_dependencies", force: true do |t|
    t.integer  "parent_id"
    t.integer  "child_id"
    t.datetime "created_at", null: false
  end

  add_index "job_dependencies", ["parent_id", "child_id"], name: "index_job_dependencies_on_parent_id_and_child_id", unique: true, using: :btree

  create_table "jobs", force: true do |t|
    t.string   "name",                      null: false
    t.text     "command"
    t.integer  "builds_count",  default: 0, null: false
    t.integer  "success_count", default: 0, null: false
    t.integer  "failure_count", default: 0, null: false
    t.string   "schedule"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "subscriptions", force: true do |t|
    t.integer  "job_id"
    t.string   "service",    null: false
    t.text     "payload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subscriptions", ["job_id"], name: "index_subscriptions_on_job_id", using: :btree

end
