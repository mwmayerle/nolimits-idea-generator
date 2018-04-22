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

ActiveRecord::Schema.define(version: 20180408145243) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "manufacturers", force: :cascade do |t|
    t.string "manufacturer_name", null: false
    t.string "products"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "manufacturer_id", null: false
    t.integer "tall"
    t.integer "short"
    t.integer "max_loops"
    t.integer "min_loops", default: 0
    t.boolean "old", default: false
    t.boolean "can_invert", default: true
    t.boolean "difficult", default: false
    t.boolean "must_launch", default: false
    t.boolean "is_shuttle", default: false
    t.string "material", default: "steel"
    t.string "product_name", null: false
    t.string "typical_elements", default: [], array: true
    t.string "plausible_elements", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
