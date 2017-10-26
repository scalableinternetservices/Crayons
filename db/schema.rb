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

ActiveRecord::Schema.define(version: 20171026194100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "image_infos", force: :cascade do |t|
    t.integer "ID"
    t.string "image_name"
    t.integer "upvotes"
    t.integer "downvotes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imageinfo", id: :integer, default: nil, force: :cascade do |t|
    t.string "image_name", limit: 50, null: false
    t.integer "upvotes", null: false
    t.integer "downvotes", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", id: false, force: :cascade do |t|
    t.text "label", null: false
    t.integer "id_ref", null: false
  end

  create_table "useraccounts", id: false, force: :cascade do |t|
    t.string "user_name", limit: 50, null: false
    t.string "email", limit: 100, null: false
    t.integer "human_rating", null: false
    t.string "images_uploaded_id", limit: 10, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.integer "human_rating"
    t.string "images_uploaded_id"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "labels", "imageinfo", column: "id_ref", name: "labels_id_ref_fkey"
end
