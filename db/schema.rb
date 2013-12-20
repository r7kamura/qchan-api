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

ActiveRecord::Schema.define(version: 20131218121011) do

  create_table "access_tokens", force: true do |t|
    t.integer  "user_id",       null: false
    t.string   "token",         null: false
    t.string   "refresh_token", null: false
    t.string   "scopes",        null: false
    t.datetime "expired_at"
    t.datetime "revoked_at"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "access_tokens", ["refresh_token"], name: "index_access_tokens_on_refresh_token", using: :btree
  add_index "access_tokens", ["token"], name: "index_access_tokens_on_token", using: :btree

  create_table "builds", force: true do |t|
    t.integer  "job_id",      null: false
    t.integer  "exit_status"
    t.integer  "number",      null: false
    t.text     "output"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "builds", ["job_id"], name: "index_builds_on_job_id", using: :btree

  create_table "job_dependencies", force: true do |t|
    t.integer  "parent_id",  null: false
    t.integer  "child_id",   null: false
    t.datetime "created_at", null: false
  end

  add_index "job_dependencies", ["parent_id", "child_id"], name: "index_job_dependencies_on_parent_id_and_child_id", unique: true, using: :btree

  create_table "jobs", force: true do |t|
    t.integer  "user_id",                     null: false
    t.string   "name",                        null: false
    t.text     "command",                     null: false
    t.integer  "successes_count", default: 0, null: false
    t.integer  "failures_count",  default: 0, null: false
    t.string   "schedule"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "jobs", ["user_id"], name: "index_jobs_on_user_id", using: :btree

  create_table "subscriptions", force: true do |t|
    t.integer  "job_id",     null: false
    t.string   "service",    null: false
    t.text     "payload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subscriptions", ["job_id"], name: "index_subscriptions_on_job_id", using: :btree

  create_table "users", force: true do |t|
    t.integer  "uid",        null: false
    t.string   "name",       null: false
    t.string   "email"
    t.string   "token",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["uid"], name: "index_users_on_uid", unique: true, using: :btree

end
