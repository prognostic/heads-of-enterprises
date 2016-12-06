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

ActiveRecord::Schema.define(version: 20161206074312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.date     "date"
    t.integer  "postion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "face_id"
    t.integer  "company_id"
    t.index ["company_id"], name: "index_assignments_on_company_id", using: :btree
    t.index ["face_id"], name: "index_assignments_on_face_id", using: :btree
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.date     "opening_date"
    t.integer  "status"
    t.decimal  "amount_of_money", precision: 10, scale: 2
    t.text     "comment"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "branch_id"
    t.integer  "company_id"
    t.index ["branch_id"], name: "index_bank_accounts_on_branch_id", using: :btree
    t.index ["company_id"], name: "index_bank_accounts_on_company_id", using: :btree
  end

  create_table "banks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "city_id"
    t.index ["city_id"], name: "index_banks_on_city_id", using: :btree
  end

  create_table "branches", force: :cascade do |t|
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "bank_id"
    t.index ["bank_id"], name: "index_branches_on_bank_id", using: :btree
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "title"
    t.string   "inn"
    t.string   "address"
    t.date     "registration_date"
    t.string   "okved"
    t.text     "comment"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "faces", force: :cascade do |t|
    t.string   "full_name"
    t.string   "personal_phone"
    t.string   "work_phone"
    t.integer  "role"
    t.text     "comment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "company_id"
    t.index ["company_id"], name: "index_faces_on_company_id", using: :btree
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "assignments", "companies"
  add_foreign_key "assignments", "faces"
  add_foreign_key "bank_accounts", "branches"
  add_foreign_key "bank_accounts", "companies"
  add_foreign_key "banks", "cities"
  add_foreign_key "branches", "banks"
  add_foreign_key "faces", "companies"
end
