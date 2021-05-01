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

ActiveRecord::Schema.define(version: 2021_04_28_195237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.string "size"
    t.integer "age"
    t.string "temperament"
    t.text "image", default: [], array: true
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dogs_on_user_id"
  end

  create_table "missing_flyers", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.boolean "found"
    t.boolean "reward"
    t.string "description"
    t.bigint "dog_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dog_id"], name: "index_missing_flyers_on_dog_id"
  end

  create_table "sightings", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.string "description"
    t.datetime "time_stamp"
    t.bigint "missing_flyer_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["missing_flyer_id"], name: "index_sightings_on_missing_flyer_id"
    t.index ["user_id"], name: "index_sightings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.boolean "good_sam"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "dogs", "users"
  add_foreign_key "missing_flyers", "dogs"
  add_foreign_key "sightings", "missing_flyers"
  add_foreign_key "sightings", "users"
end
