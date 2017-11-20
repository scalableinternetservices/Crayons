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

ActiveRecord::Schema.define(version: 20171120015734) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "annotations", force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "human_capitals", force: :cascade do |t|
    t.integer "total", default: 0, null: false
    t.integer "captcha_score", default: 0, null: false
    t.integer "number_of_images_uploaded", default: 0, null: false
    t.integer "number_of_images_downloaded", default: 0, null: false
    t.integer "number_of_labels_made", default: 0, null: false
    t.integer "membership_length", default: 0, null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "user_devises", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname", null: false
    t.string "lastname", null: false
    t.integer "number_of_images_uploaded", default: 0, null: false
    t.integer "number_of_images_downloaded", default: 0, null: false
    t.integer "human_capital", default: 0, null: false
    t.integer "number_of_labels_made", default: 0, null: false
    t.integer "integer", default: 0, null: false
    t.integer "gender"
    t.integer "string"
    t.integer "birthday"
    t.integer "date"
    t.integer "country"
    t.index ["email"], name: "index_user_devises_on_email", unique: true
    t.index ["reset_password_token"], name: "index_user_devises_on_reset_password_token", unique: true
  end

end
