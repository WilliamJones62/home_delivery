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

ActiveRecord::Schema.define(version: 20200430125537) do

  create_table "homedelivery_referals", force: :cascade do |t|
    t.string "contact_name"
    t.string "contact_method_1"
    t.string "contact_info_1"
    t.string "contact_method_2"
    t.string "contact_info_2"
    t.string "contact_method_3"
    t.string "contact_info_3"
    t.string "referred_by"
    t.string "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "town"
    t.text "notes"
  end

  create_table "ordheads", force: :cascade do |t|
    t.string "order_stat"
    t.string "route_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "order_date"
    t.string "bill_addr3"
    t.string "billadd3"
  end

  create_table "sales", force: :cascade do |t|
    t.string "town"
    t.integer "order_stat"
    t.decimal "ext_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "order_numb"
    t.string "rel_numb"
  end

  create_table "summaries", force: :cascade do |t|
    t.string "region"
    t.string "route"
    t.string "town"
    t.string "order_stat"
    t.date "dueout_date"
    t.float "ext_price"
    t.integer "no_orders"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "towns", force: :cascade do |t|
    t.string "township"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "coupon_code"
    t.string "town_rep"
    t.string "contact_info"
  end

end
