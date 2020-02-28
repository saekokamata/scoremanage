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

ActiveRecord::Schema.define(version: 2020_02_27_125515) do

  create_table "tests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.date "year_month"
    t.integer "week"
    t.string "text_no"
    t.string "japanese_theme"
    t.integer "japanese_score"
    t.string "japanese_memo"
    t.boolean "japanese_review", default: false, null: false
    t.string "math_theme"
    t.integer "math_score"
    t.string "math_memo"
    t.boolean "math_review", default: false, null: false
    t.string "science_theme"
    t.integer "science_score"
    t.string "science_memo"
    t.boolean "science_review", default: false, null: false
    t.string "social_theme"
    t.integer "social_score"
    t.string "social_memo"
    t.boolean "social_review", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tests_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "parent_name"
    t.string "email"
    t.string "password_digest"
    t.string "child_name"
    t.integer "passing_score"
    t.integer "failing_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "tests", "users"
end
