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

ActiveRecord::Schema.define(version: 2022_10_21_002731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "scheduled_works", force: :cascade do |t|
    t.integer "site_captures_id"
    t.datetime "date_time"
    t.boolean "status_scheduled"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scrapper_results", force: :cascade do |t|
    t.integer "site_captures_id"
    t.integer "scheduled_works_id"
    t.string "brand"
    t.text "glosa"
    t.text "url"
    t.string "price"
    t.string "sale"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "site_captures", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "url_site"
    t.boolean "status_site"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
