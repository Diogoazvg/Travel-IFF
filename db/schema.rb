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

ActiveRecord::Schema.define(version: 20171211181602) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_student_events", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bus_companies", force: :cascade do |t|
    t.string   "cnpj"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "cnh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "category"
    t.integer  "person_id"
    t.integer  "vehicle_id"
    t.index ["person_id"], name: "index_drivers_on_person_id", using: :btree
    t.index ["vehicle_id"], name: "index_drivers_on_vehicle_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.date     "day"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "travel_id"
    t.text     "description"
    t.index ["travel_id"], name: "index_events_on_travel_id", using: :btree
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "identity"
    t.string   "cpf"
    t.date     "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_events", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_student_events_on_event_id", using: :btree
    t.index ["student_id"], name: "index_student_events_on_student_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "person_id"
    t.string   "registration_file_name"
    t.string   "registration_content_type"
    t.integer  "registration_file_size"
    t.datetime "registration_updated_at"
    t.index ["person_id"], name: "index_students_on_person_id", using: :btree
  end

  create_table "travels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
    t.string   "day"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer  "seat"
    t.float    "price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "travel_id"
    t.integer  "bus_company_id"
    t.integer  "order_number"
    t.index ["bus_company_id"], name: "index_vehicles_on_bus_company_id", using: :btree
    t.index ["travel_id"], name: "index_vehicles_on_travel_id", using: :btree
  end

  add_foreign_key "drivers", "people"
  add_foreign_key "drivers", "vehicles"
  add_foreign_key "events", "travels"
  add_foreign_key "student_events", "events"
  add_foreign_key "student_events", "students"
  add_foreign_key "students", "people"
  add_foreign_key "vehicles", "bus_companies"
  add_foreign_key "vehicles", "travels"
end
