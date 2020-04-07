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

ActiveRecord::Schema.define(version: 20200407022204) do

  create_table "event_venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "starDate"
    t.datetime "endDate"
    t.integer "event_venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_venue_id"], name: "index_events_on_event_venue_id"
  end

  create_table "ticket_orders", force: :cascade do |t|
    t.integer "tickettypes_id"
    t.integer "user_id"
    t.integer "events_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["events_id"], name: "index_ticket_orders_on_events_id"
    t.index ["tickettypes_id"], name: "index_ticket_orders_on_tickettypes_id"
    t.index ["user_id"], name: "index_ticket_orders_on_user_id"
  end

  create_table "ticket_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price"
    t.integer "events_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["events_id"], name: "index_ticket_types_on_events_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "address"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
