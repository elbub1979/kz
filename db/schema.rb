# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_22_193652) do

  create_table "cabinets", force: :cascade do |t|
    t.string "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "operators", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "number"
    t.integer "operator_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["operator_id"], name: "index_phones_on_operator_id"
    t.index ["user_id"], name: "index_phones_on_user_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "fname"
    t.string "pname"
    t.string "lname"
    t.string "nickname"
    t.string "email"
    t.string "password"
    t.string "password_confirm"
    t.integer "cabinet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "position_id"
    t.integer "department_id"
    t.index ["cabinet_id"], name: "index_users_on_cabinet_id"
    t.index ["department_id"], name: "index_users_on_department_id"
    t.index ["position_id"], name: "index_users_on_position_id"
  end

  add_foreign_key "phones", "operators"
  add_foreign_key "phones", "users"
  add_foreign_key "users", "cabinets"
  add_foreign_key "users", "departments"
  add_foreign_key "users", "positions"
end
