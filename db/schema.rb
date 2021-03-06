# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_15_120636) do

  create_table "combis", force: :cascade do |t|
    t.string "registration_plate"
    t.integer "cap"
    t.integer "model"
    t.integer "bus_type"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "deleted_at"
  end

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.text "content"
    t.integer "ticket_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "credit_card2s", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.integer "number"
    t.integer "cvc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "credit_cards", force: :cascade do |t|
    t.string "owner"
    t.integer "card_number"
    t.date "expiration_date"
    t.integer "security_number"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "insumos", force: :cascade do |t|
    t.string "tipo"
    t.integer "cant"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "price"
    t.date "deleted_at"
  end

  create_table "lists", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "insumo_id"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cant"
  end

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.date "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.date "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.float "price"
    t.date "created"
    t.integer "ticket_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "travel_id"
  end

  create_table "travels", force: :cascade do |t|
    t.date "travel_day"
    t.time "travel_hour"
    t.integer "combi_id"
    t.integer "way_id"
    t.integer "state_id"
    t.date "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "hora"
    t.float "price"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "last_name"
    t.integer "dni"
    t.date "birth_date"
    t.boolean "suscribed"
    t.date "deleted_at"
    t.integer "role", default: 0
    t.integer "credit_card_id"
    t.integer "phone_number"
    t.index ["dni"], name: "index_users_on_dni", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "ways", force: :cascade do |t|
    t.string "description"
    t.integer "start"
    t.integer "end_way"
    t.date "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
