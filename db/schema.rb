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

ActiveRecord::Schema.define(version: 20170602055728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bases", force: :cascade do |t|
    t.string   "employeecode"
    t.text     "name"
    t.date     "birthday"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "organization_id"
    t.string   "sex",             default: "man"
    t.string   "kanichi",         default: "kan"
    t.string   "kumiai",          default: "hikumi"
    t.boolean  "Saikoyo",         default: false
    t.integer  "status_id"
    t.integer  "yakushoku_id"
    t.integer  "sikaku_id"
    t.integer  "koyou_id"
    t.date     "ninmei_date",     default: '2015-12-31'
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "base_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "koyous", force: :cascade do |t|
    t.string   "koyoukubun"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "orgcode"
    t.text     "orgname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sikakus", force: :cascade do |t|
    t.string   "shikakuname"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "zaishoku"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "workmanages", force: :cascade do |t|
    t.integer  "emp_id"
    t.integer  "maneger_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.date     "start_date", default: '2017-12-31'
    t.date     "stop_date",  default: '2382-12-31'
  end

  add_index "workmanages", ["emp_id", "maneger_id"], name: "index_workmanages_on_emp_id_and_maneger_id", unique: true, using: :btree
  add_index "workmanages", ["emp_id"], name: "index_workmanages_on_emp_id", using: :btree
  add_index "workmanages", ["maneger_id"], name: "index_workmanages_on_maneger_id", using: :btree

  create_table "yakushokus", force: :cascade do |t|
    t.string   "yakushokuname"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
