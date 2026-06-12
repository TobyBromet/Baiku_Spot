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

ActiveRecord::Schema[8.1].define(version: 2026_06_12_043849) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "parking_spots", force: :cascade do |t|
    t.string "accepts_card"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "last_scraped_at"
    t.datetime "last_verified_at"
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
    t.integer "max_bike_length_cm"
    t.integer "max_bike_width_cm"
    t.string "name"
    t.text "notes"
    t.string "operator_name"
    t.string "operator_url"
    t.string "parking_type"
    t.string "phone_number"
    t.string "price_text"
    t.text "raw_source_text"
    t.string "reservation_required"
    t.string "source_name"
    t.string "source_url"
    t.string "supports_over_125cc"
    t.datetime "updated_at", null: false
  end
end
