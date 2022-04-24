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

ActiveRecord::Schema[7.0].define(version: 2022_04_24_172021) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "occurrences", force: :cascade do |t|
    t.string "type_name"
    t.integer "value"
    t.datetime "date"
    t.bigint "policeman_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["policeman_id"], name: "index_occurrences_on_policeman_id"
  end

  create_table "policemen", force: :cascade do |t|
    t.string "position"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "position"
    t.string "name"
    t.string "registration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "occurrences", "policemen"
end
