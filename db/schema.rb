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

ActiveRecord::Schema.define(version: 20140820133703) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "waste_collections", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "waste_containers", force: true do |t|
    t.integer  "size"
    t.string   "color"
    t.string   "container_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "waste_items", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "waste_properties", force: true do |t|
    t.string   "uprn"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "paon"
    t.string   "saon"
    t.string   "postcode"
    t.string   "post_town"
  end

  create_table "waste_round_manifests", force: true do |t|
    t.integer  "round_id"
    t.integer  "container_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "waste_rounds", force: true do |t|
    t.integer  "schedule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "property_id"
  end

  create_table "waste_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
