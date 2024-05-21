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

ActiveRecord::Schema[7.0].define(version: 2024_05_21_122600) do
  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "employee_uid"
    t.string "phone"
    t.integer "company_id"
    t.datetime "discarded_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token"
    t.index ["email", "discarded_at", "company_id", "uid"], name: "index_users_on_email_and_discarded_at_and_company_id_and_uid", unique: true
    t.index ["email"], name: "index_users_on_email"
    t.index ["employee_uid"], name: "index_users_on_employee_uid", unique: true
    t.index ["phone", "discarded_at", "company_id", "uid"], name: "index_users_on_phone_and_discarded_at_and_company_id_and_uid", unique: true
    t.index ["uid", "provider", "discarded_at"], name: "index_users_on_uid_and_provider_and_discarded_at", unique: true
  end

end
