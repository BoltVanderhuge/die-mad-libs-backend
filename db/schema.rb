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

ActiveRecord::Schema.define(version: 2021_02_13_204904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mad_libs", force: :cascade do |t|
    t.text "story"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "text_entries", force: :cascade do |t|
    t.bigint "mad_lib_id", null: false
    t.bigint "user_id", null: false
    t.text "user_inputs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "title"
    t.index ["mad_lib_id"], name: "index_text_entries_on_mad_lib_id"
    t.index ["user_id"], name: "index_text_entries_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "text_entries", "mad_libs"
  add_foreign_key "text_entries", "users"
end