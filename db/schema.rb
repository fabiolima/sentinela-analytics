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

ActiveRecord::Schema[7.0].define(version: 2024_02_27_185605) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "errors", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "source"
    t.boolean "mobile"
    t.string "platform"
    t.string "app_version"
    t.string "user_agent"
    t.integer "width"
    t.integer "height"
    t.string "message"
    t.string "stack"
    t.string "domain"
    t.string "filename"
    t.string "referrer"
    t.string "href"
    t.integer "lineno"
    t.integer "colno"
    t.datetime "date"
    t.uuid "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
