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

ActiveRecord::Schema.define(version: 2020_04_15_205911) do

  create_table "admins", force: :cascade do |t|
    t.string "name", null: false
    t.string "name_kana", null: false
    t.integer "post_code", null: false
    t.string "address", null: false
    t.integer "tel", null: false
    t.string "image_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["name"], name: "index_admins_on_name"
    t.index ["name_kana"], name: "index_admins_on_name_kana"
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["tel"], name: "index_admins_on_tel"
  end

  create_table "events", force: :cascade do |t|
    t.integer "admin_id", null: false
    t.string "title", null: false
    t.datetime "start_datetime", null: false
    t.datetime "end_datetime", null: false
    t.datetime "time", null: false
    t.text "introduction", null: false
    t.text "comment", null: false
    t.string "image_id", null: false
    t.boolean "validity", default: true, null: false
    t.integer "limit_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reserves", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "start_datetime", null: false
    t.integer "join_count", null: false
    t.text "cancel_request", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "admin_id", null: false
    t.string "fam_name", null: false
    t.string "fam_name_kana", null: false
    t.string "first_name", null: false
    t.string "first_name_kana", null: false
    t.integer "post_code", null: false
    t.string "address", null: false
    t.string "domicle", null: false
    t.integer "tel", null: false
    t.boolean "is_active", default: true, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["fam_name"], name: "index_users_on_fam_name"
    t.index ["fam_name_kana"], name: "index_users_on_fam_name_kana"
    t.index ["first_name"], name: "index_users_on_first_name"
    t.index ["first_name_kana"], name: "index_users_on_first_name_kana"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["tel"], name: "index_users_on_tel"
  end

end
