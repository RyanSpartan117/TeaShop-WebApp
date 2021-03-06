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

ActiveRecord::Schema.define(version: 20170608142547) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tea_stores", force: :cascade do |t|
    t.string "name", null: false
    t.decimal "rating", null: false
    t.string "address1", null: false
    t.string "city", null: false
    t.string "postcode", null: false
    t.float "latitude"
    t.float "longitude"
  end

  create_table "teas", force: :cascade do |t|
    t.string "tea_name", null: false
    t.string "type_of_tea", null: false
    t.decimal "price", precision: 5, scale: 2, null: false
    t.integer "tea_store_id"
  end

end
