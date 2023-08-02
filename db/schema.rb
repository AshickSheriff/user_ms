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

ActiveRecord::Schema[7.0].define(version: 2023_08_02_111539) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_details", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "mail"
    t.string "temp_door_no"
    t.string "temp_street_name"
    t.string "temp_landmark"
    t.string "temp_post"
    t.string "temp_district"
    t.string "temp_state"
    t.string "temp_pincode"
    t.string "perm_door_no"
    t.string "perm_street_name"
    t.string "perm_landmark"
    t.string "perm_post"
    t.string "perm_district"
    t.string "perm_state"
    t.string "perm_pincode"
    t.string "ref_name"
    t.string "ref_contact"
    t.string "ref_mail"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fillers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_fillers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_fillers_on_reset_password_token", unique: true
  end

  create_table "first_forms", force: :cascade do |t|
    t.string "firstname"
    t.string "midname"
    t.string "lastname"
    t.integer "age"
    t.date "dob"
    t.string "email"
    t.string "phone_no"
    t.string "occupation"
    t.string "degree"
    t.string "organization"
    t.string "experience"
    t.text "org_address"
    t.string "about_us"
    t.integer "interest_rating"
    t.string "course"
    t.string "instagram_account"
    t.string "twitter_account"
    t.string "facebook_account"
    t.float "cgpa"
    t.string "father_name"
    t.string "mother_name"
    t.string "father_mobile"
    t.string "mother_mobile"
    t.text "sibling_details"
    t.text "suggestions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "office_details", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_no"
    t.string "tenth_mark"
    t.string "twelfth_mark"
    t.string "cgpa"
    t.string "aadhar_no"
    t.string "pan_no"
    t.string "account_no"
    t.integer "no_of_siblings"
    t.string "first_graduate"
    t.string "skills"
    t.string "differently_abled"
    t.string "completed_graduation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offices", force: :cascade do |t|
    t.string "office_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "second_forms", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "mail"
    t.string "temp_door_no"
    t.string "temp_street_name"
    t.string "temp_landmark"
    t.string "temp_post"
    t.string "temp_district"
    t.string "temp_state"
    t.string "temp_pincode"
    t.string "perm_door_no"
    t.string "perm_street_name"
    t.string "perm_landmark"
    t.string "perm_post"
    t.string "perm_district"
    t.string "perm_state"
    t.string "perm_pincode"
    t.string "ref_name"
    t.string "ref_contact"
    t.string "ref_mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "third_forms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_no"
    t.string "tenth_mark"
    t.string "twelfth_mark"
    t.string "cgpa"
    t.string "aadhar_no"
    t.string "pan_no"
    t.string "account_no"
    t.integer "no_of_siblings"
    t.string "first_graduate"
    t.string "skills"
    t.string "differently_abled"
    t.string "completed_graduation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_details", force: :cascade do |t|
    t.string "firstname"
    t.string "midname"
    t.string "lastname"
    t.integer "age"
    t.date "dob"
    t.string "email"
    t.string "phone_no"
    t.string "occupation"
    t.string "degree"
    t.string "organization"
    t.string "experience"
    t.text "org_address"
    t.string "about_us"
    t.integer "interest_rating"
    t.string "course"
    t.string "instagram_account"
    t.string "twitter_account"
    t.string "facebook_account"
    t.float "cgpa"
    t.string "father_name"
    t.string "mother_name"
    t.string "father_mobile"
    t.string "mother_mobile"
    t.text "sibling_details"
    t.text "suggestions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_forms", force: :cascade do |t|
    t.string "firstname"
    t.string "midname"
    t.string "lastname"
    t.integer "age"
    t.date "dob"
    t.string "email"
    t.string "phone_no"
    t.string "occupation"
    t.string "degree"
    t.string "organization"
    t.string "experience"
    t.text "org_address"
    t.string "about_us"
    t.integer "interest_rating"
    t.string "course"
    t.string "instagram_account"
    t.string "twitter_account"
    t.string "facebook_account"
    t.float "cgpa"
    t.string "father_name"
    t.string "mother_name"
    t.string "father_mobile"
    t.string "mother_mobile"
    t.text "sibling_details"
    t.text "suggestions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "viewers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_viewers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_viewers_on_reset_password_token", unique: true
  end

end
