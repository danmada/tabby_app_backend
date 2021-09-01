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

ActiveRecord::Schema.define(version: 2021_09_01_154551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bars", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.bigint "credit_card"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.bigint "bar_id", null: false
    t.string "drink_type"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bar_id"], name: "index_drinks_on_bar_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "tab_id", null: false
    t.bigint "drink_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drink_id"], name: "index_orders_on_drink_id"
    t.index ["tab_id"], name: "index_orders_on_tab_id"
  end

  create_table "tabs", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "bar_id", null: false
    t.boolean "is_open"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bar_id"], name: "index_tabs_on_bar_id"
    t.index ["customer_id"], name: "index_tabs_on_customer_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.string "pet"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "drinks", "bars"
  add_foreign_key "orders", "drinks"
  add_foreign_key "orders", "tabs"
  add_foreign_key "tabs", "bars"
  add_foreign_key "tabs", "customers"
end
