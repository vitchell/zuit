# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131109222100) do

  create_table "carts", force: true do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customizations", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.string   "jacket_lapel"
    t.string   "jacket_button"
    t.string   "jacket_pocket"
    t.string   "jacket_lining"
    t.string   "jacket_monogram"
    t.string   "pant_type"
    t.string   "pant_length"
    t.string   "skirt_type"
    t.string   "skirt_length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "measurements", force: true do |t|
    t.integer  "user_id"
    t.decimal  "height"
    t.decimal  "neck"
    t.decimal  "shoulder_to_shoulder"
    t.decimal  "shoulder_right"
    t.decimal  "shoulder_left"
    t.decimal  "bicep"
    t.decimal  "arm_length_right"
    t.string   "arm_length_left"
    t.decimal  "wrist"
    t.decimal  "torso_length"
    t.decimal  "chest"
    t.decimal  "nip_to_nip"
    t.decimal  "stomach"
    t.decimal  "waist"
    t.decimal  "hip"
    t.decimal  "waist_to_knee"
    t.decimal  "leg_right"
    t.decimal  "leg_left"
    t.decimal  "crotch"
    t.decimal  "thigh"
    t.decimal  "knee"
    t.string   "shoulder_type"
    t.string   "chest_type"
    t.string   "stomach_type"
    t.string   "posture_type"
    t.string   "seat_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "suit_id"
    t.string   "product_type"
    t.string   "product_model"
    t.string   "collection"
    t.decimal  "price"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suits", force: true do |t|
    t.string   "suit_type"
    t.string   "suit_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
