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

ActiveRecord::Schema.define(version: 20170927021132) do

  create_table "clients", force: :cascade do |t|
    t.string "MAC"
    t.datetime "First_time_seen"
    t.datetime "Last_time_seen"
    t.integer "Power"
    t.integer "Packets"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frequencies", force: :cascade do |t|
    t.string "channel"
    t.string "Lower_Frequency"
    t.string "Center_Frequency"
    t.string "Upper_Frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "networks", force: :cascade do |t|
    t.string "bssid"
    t.datetime "First_time_seen"
    t.datetime "Last_time_seen"
    t.string "channel"
    t.string "Speed"
    t.string "Privacy"
    t.string "Cipher"
    t.string "Authentication"
    t.integer "Power"
    t.integer "beacons"
    t.integer "IV"
    t.string "LAN_IP"
    t.string "ID_lenght"
    t.string "Key"
    t.string "ESSID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ouis", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
