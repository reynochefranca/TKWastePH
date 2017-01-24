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

ActiveRecord::Schema.define(version: 20170124111307) do

  create_table "cars", force: :cascade do |t|
    t.string   "car_type",   limit: 255
    t.string   "number",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "code",                   limit: 255
    t.string   "name",                   limit: 255
    t.integer  "category_permission_id", limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "category_permissions", force: :cascade do |t|
    t.integer  "category_id",   limit: 4
    t.integer  "permission_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "disposal_methods", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "edi_users", force: :cascade do |t|
    t.string   "subscriber_number",              limit: 255
    t.string   "connection_registration_number", limit: 255
    t.string   "published_confirmation_number",  limit: 255
    t.string   "password",                       limit: 255
    t.string   "registration_user1_name",        limit: 255
    t.string   "registration_user1_email",       limit: 255
    t.string   "registration_user2_name",        limit: 255
    t.string   "registration_user2_email",       limit: 255
    t.string   "registration_user3_name",        limit: 255
    t.string   "registration_user3_email",       limit: 255
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "hazardous_substances", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "packages", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.integer  "trader_id",                                   limit: 4
    t.string   "permission_type",                             limit: 255
    t.string   "started_at",                                  limit: 255
    t.string   "limited_at",                                  limit: 255
    t.string   "number",                                      limit: 255
    t.string   "pdf",                                         limit: 255
    t.string   "permit_type",                                 limit: 255
    t.string   "permit_classification",                       limit: 255
    t.string   "permission_number",                           limit: 255
    t.string   "license_name",                                limit: 255
    t.string   "permit_area",                                 limit: 255
    t.string   "allow_municipalities",                        limit: 255
    t.string   "permission_period",                           limit: 255
    t.string   "industrial_waste_pay_certification_division", limit: 255
    t.integer  "category_permission_id",                      limit: 4
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
  end

  create_table "place_users", force: :cascade do |t|
    t.integer  "place_id",   limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "code",             limit: 255
    t.string   "name_kanji",       limit: 255
    t.string   "name_kana",        limit: 255
    t.string   "abbreviation",     limit: 255
    t.string   "zipcode",          limit: 255
    t.string   "prefecture",       limit: 255
    t.string   "city",             limit: 255
    t.string   "address",          limit: 255
    t.string   "bill_name",        limit: 255
    t.string   "tel1",             limit: 255
    t.string   "tel2",             limit: 255
    t.integer  "trapder_place_id", limit: 4
    t.integer  "place_user_id",    limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.integer  "trader_edi_user_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "shapes", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "trader_edi_users", force: :cascade do |t|
    t.string   "trader_id",   limit: 255
    t.integer  "edi_user_id", limit: 4
    t.integer  "role_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "trader_places", force: :cascade do |t|
    t.integer  "trader_id",  limit: 4
    t.integer  "place_id",   limit: 4
    t.integer  "place_type", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "traders", force: :cascade do |t|
    t.string   "code",                                          limit: 255
    t.string   "name_kanji",                                    limit: 255
    t.string   "name_kana",                                     limit: 255
    t.string   "tel_name",                                      limit: 255
    t.integer  "tel",                                           limit: 4
    t.string   "fax_name",                                      limit: 255
    t.integer  "fax",                                           limit: 4
    t.string   "email",                                         limit: 255
    t.string   "division",                                      limit: 255
    t.string   "memo",                                          limit: 255
    t.string   "industrial_waste_excellent_certification_type", limit: 255
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "trader_id",              limit: 4
    t.string   "email",                  limit: 255
    t.string   "name_kanji",             limit: 255
    t.string   "name_kana",              limit: 255
    t.string   "tel_name",               limit: 255
    t.string   "tel",                    limit: 255
    t.string   "position",               limit: 255
    t.string   "memo",                   limit: 255
    t.string   "login_id",               limit: 255
    t.string   "encrypted_password",     limit: 255
    t.string   "reset_password_token",   limit: 255
    t.string   "reset_password_sent_at", limit: 255
    t.string   "remember_created_a",     limit: 255
    t.string   "sign_in_court",          limit: 255
    t.string   "current_sign_in_at",     limit: 255
    t.string   "last_sign_in_at",        limit: 255
    t.string   "current_sign_in_at_ip",  limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "waste_regs", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.string   "waste_type", limit: 255
    t.string   "quantity",   limit: 255
    t.string   "unit",       limit: 255
    t.string   "form",       limit: 255
    t.string   "packing",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "waste_types", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
