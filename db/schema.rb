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

ActiveRecord::Schema.define(version: 20140807235558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customs", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_id"
    t.string   "slug"
  end

  create_table "experiences", force: true do |t|
    t.string   "job_title"
    t.string   "company"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_id"
    t.text     "responsibilities"
    t.string   "slug"
    t.string   "url"
    t.string   "start_date"
    t.string   "end_date"
  end

  create_table "gravatars", force: true do |t|
    t.integer "user_id"
    t.boolean "show_image"
    t.boolean "use_custom_url"
    t.string  "custom_image_url"
  end

  create_table "hobbies", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_id"
    t.string   "slug"
  end

  create_table "objectives", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_id"
    t.string   "slug"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "experience_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "url"
  end

  create_table "references", force: true do |t|
    t.string   "name"
    t.string   "relationship"
    t.string   "company"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_id"
    t.string   "slug"
  end

  create_table "resumes", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "degree"
    t.integer  "year_graduated"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_id"
    t.string   "slug"
  end

  create_table "skills", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_id"
    t.string   "slug"
  end

  create_table "snippets", force: true do |t|
    t.integer  "resume_id"
    t.string   "title"
    t.text     "description"
    t.text     "code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "programming_language"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "slug"
  end

end
