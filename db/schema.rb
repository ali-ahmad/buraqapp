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

ActiveRecord::Schema.define(version: 2019_12_04_003637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "comment_type"
    t.integer "commentable_id"
    t.integer "user_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "naat_id"
    t.index ["naat_id"], name: "index_comments_on_naat_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "large_photo"
    t.string "photo"
    t.string "organizationsname"
    t.string "firstname"
    t.string "program_type"
    t.string "program_name"
    t.string "datetime"
    t.string "day"
    t.string "time"
    t.string "client_name"
    t.string "address"
    t.string "landmark"
    t.string "route"
    t.string "location_picker"
    t.string "country"
    t.string "province"
    t.string "city"
    t.string "area_name"
    t.string "facebookbook_link"
    t.string "twitter_link"
    t.string "whatsappno"
    t.string "spicily_speech_skill"
    t.string "spicily_speech_fullName"
    t.string "spicily_speech_photo"
    t.string "spicily_speech_designation"
    t.string "speekar_skill"
    t.string "speekar_fullName"
    t.string "speekar_photo"
    t.string "speekar_designation"
    t.string "guest_skill"
    t.string "guest_fullName"
    t.string "guest_photo"
    t.string "guest_designation"
    t.string "vocalist_skill"
    t.string "vocalist_fullName"
    t.string "vocalist_photo"
    t.string "vocalist_designation"
    t.string "sponsor_fullName"
    t.string "sponsor_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "landing_pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "naatlyrics", force: :cascade do |t|
    t.integer "naat_id"
    t.integer "language_id"
    t.string "photo"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "naats", force: :cascade do |t|
    t.string "large_photo"
    t.string "photo"
    t.string "title"
    t.string "writername"
    t.string "videolink"
    t.string "audiolink"
    t.string "description"
    t.string "webSite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
  end

  create_table "organizations", force: :cascade do |t|
    t.string "large_photo"
    t.string "photo"
    t.string "organization_name"
    t.string "ownername"
    t.string "phone"
    t.string "phone2"
    t.datetime "datetime"
    t.string "email"
    t.string "email2"
    t.string "webSite"
    t.string "address"
    t.string "landMark"
    t.string "country"
    t.string "province"
    t.string "city"
    t.string "pin_code"
    t.string "area"
    t.string "Websitesurl"
    t.string "facebook_url"
    t.string "twitter_url"
    t.string "googleplus_url"
    t.string "instagram_url"
    t.string "whatsappno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nicn"
    t.string "firstname"
    t.string "lastname"
    t.string "photo"
    t.string "phone"
    t.string "gender"
    t.string "address"
    t.float "districts"
    t.float "longitude"
    t.string "location"
    t.string "country"
    t.string "province"
    t.string "city"
    t.string "area"
    t.string "townname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "naats"
end
