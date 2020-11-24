# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_24_100906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: :cascade do |t|
    t.string "stock_symbol"
    t.text "description"
    t.string "asset_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "charities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "charitys_choices", force: :cascade do |t|
    t.bigint "asset_id", null: false
    t.bigint "charity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["asset_id"], name: "index_charitys_choices_on_asset_id"
    t.index ["charity_id"], name: "index_charitys_choices_on_charity_id"
  end

  create_table "donations", force: :cascade do |t|
    t.bigint "charity_id", null: false
    t.bigint "user_id", null: false
    t.bigint "asset_id", null: false
    t.integer "donation_amount"
    t.integer "quantity"
    t.string "symbol"
    t.string "order_type"
    t.integer "limit_price"
    t.integer "stop_price"
    t.string "time_in_force"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["asset_id"], name: "index_donations_on_asset_id"
    t.index ["charity_id"], name: "index_donations_on_charity_id"
    t.index ["user_id"], name: "index_donations_on_user_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "charity_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["charity_id"], name: "index_favourites_on_charity_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "charitys_choices", "assets"
  add_foreign_key "charitys_choices", "charities"
  add_foreign_key "donations", "assets"
  add_foreign_key "donations", "charities"
  add_foreign_key "donations", "users"
  add_foreign_key "favourites", "charities"
  add_foreign_key "favourites", "users"
end
