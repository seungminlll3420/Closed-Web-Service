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

ActiveRecord::Schema.define(version: 2020_04_19_102535) do

  create_table "my_infos", force: :cascade do |t|
    t.integer "user_id"
    t.string "myInfo_username"
    t.string "myInfo_email"
    t.boolean "my_info_open"
    t.integer "my_info_edit"
    t.string "myInfo_primary1"
    t.string "myInfo_primary_class1"
    t.string "myInfo_primary2"
    t.string "myInfo_primary_class2"
    t.string "myInfo_primary3"
    t.string "myInfo_primary_class3"
    t.string "myInfo_primary4"
    t.string "myInfo_primary_class4"
    t.string "myInfo_primary5"
    t.string "myInfo_primary_class5"
    t.string "myInfo_primary6"
    t.string "myInfo_primary_class6"
    t.integer "myInfo_primary_year"
    t.string "myInfo_middle1"
    t.string "myInfo_middle_class1"
    t.string "myInfo_middle2"
    t.string "myInfo_middle_class2"
    t.string "myInfo_middle3"
    t.string "myInfo_middle_class3"
    t.integer "myInfo_middle_year"
    t.string "myInfo_high1"
    t.string "myInfo_high_class1"
    t.string "myInfo_high2"
    t.string "myInfo_high_class2"
    t.string "myInfo_high3"
    t.string "myInfo_high_class3"
    t.integer "myInfo_high_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "story"
    t.integer "user_id"
    t.string "user_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_lists", force: :cascade do |t|
    t.string "school_option"
    t.string "school_name"
    t.integer "school_year"
    t.string "find_user_name"
    t.string "find_user_key"
    t.string "find_user_area"
    t.string "title"
    t.string "content"
    t.integer "my_info_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
