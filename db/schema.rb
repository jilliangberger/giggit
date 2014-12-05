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

ActiveRecord::Schema.define(version: 20141203225504) do

  create_table "audio_samples", force: true do |t|
    t.integer  "band_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "band_members", force: true do |t|
    t.string   "full_name"
    t.integer  "band_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bands", force: true do |t|
    t.string   "band_name"
    t.string   "genre"
    t.string   "email"
    t.string   "phone_number"
    t.string   "home_town"
    t.string   "facebook"
    t.string   "soundcloud"
    t.string   "reverbnation"
    t.string   "band_camp"
    t.integer  "venue_id"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: true do |t|
    t.string   "venue_name"
    t.string   "location"
    t.string   "contact_number"
    t.string   "homepage_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
