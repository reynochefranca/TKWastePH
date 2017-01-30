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

ActiveRecord::Schema.define(version: 20170125035200) do

  create_table "cars", force: :cascade do |t|
    t.string   "car_type",   limit: 255
    t.string   "number",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categories", force: :cascade do |t|
    t.integer  "parent_id",  limit: 4
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "category_permissions", force: :cascade do |t|
    t.integer  "category_id",   limit: 4
    t.integer  "permission_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "contract_manifests", force: :cascade do |t|
    t.integer  "contract_id", limit: 4
    t.integer  "manifest_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "contract_type",          limit: 4
    t.integer  "first_party_id",         limit: 4
    t.integer  "second_party_id",        limit: 4
    t.integer  "waste_type_id",          limit: 4
    t.integer  "category_id",            limit: 4
    t.integer  "place_id",               limit: 4
    t.float    "expected_amount",        limit: 24
    t.string   "industrial_waste_name",  limit: 255
    t.string   "pdf",                    limit: 255
    t.integer  "unit_id",                limit: 4
    t.integer  "shape_id",               limit: 4
    t.integer  "package_id",             limit: 4
    t.integer  "hazardous_substance_id", limit: 4
    t.integer  "disposal_method_id",     limit: 4
    t.integer  "status",                 limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
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

  create_table "manifests", force: :cascade do |t|
    t.datetime "applied_at"
    t.string   "applied_code",                   limit: 255
    t.string   "referance_code",                 limit: 255
    t.integer  "applied_commiter_id",            limit: 4
    t.string   "pre_conference_code",            limit: 255
    t.datetime "pre_conferenced_at"
    t.integer  "category_id",                    limit: 4
    t.float    "total_amount",                   limit: 24
    t.integer  "unit_id",                        limit: 4
    t.integer  "shape_id",                       limit: 4
    t.integer  "package_id",                     limit: 4
    t.integer  "hazardous_substance_id",         limit: 4
    t.integer  "disposal_method_id",             limit: 4
    t.integer  "collection_commit_trader_id",    limit: 4
    t.integer  "collection_commit_user_id",      limit: 4
    t.datetime "collection_finished_at"
    t.integer  "disposal_commit_trader_id",      limit: 4
    t.integer  "disposal_commit_user_id",        limit: 4
    t.datetime "disposal_finished_at"
    t.datetime "final_disposal_finished_at"
    t.integer  "final_disposal_trader_plant_id", limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "packages", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.integer  "trader_id",                                    limit: 4
    t.string   "permit_type",                                  limit: 255
    t.string   "permission_type",                              limit: 255
    t.string   "permit_number",                                limit: 255
    t.string   "permitted_waste_classification",               limit: 255
    t.string   "permit_name",                                  limit: 255
    t.string   "allowed_area",                                 limit: 255
    t.string   "permitted_municipality",                       limit: 255
    t.datetime "started_at"
    t.datetime "limited_at"
    t.string   "industrial_waste_paid_certification_cetegory", limit: 255
    t.string   "permit_pdf",                                   limit: 255
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  create_table "place_users", force: :cascade do |t|
    t.integer  "place_id",   limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "code",         limit: 255
    t.string   "name_kanji",   limit: 255
    t.string   "name_kana",    limit: 255
    t.string   "abbreviation", limit: 255
    t.string   "zipcode",      limit: 255
    t.string   "prefecture",   limit: 255
    t.string   "city",         limit: 255
    t.string   "address",      limit: 255
    t.string   "tel1",         limit: 255
    t.string   "tel2",         limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "shapes", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "trader_edi_users", force: :cascade do |t|
    t.integer  "trader_id",   limit: 4
    t.integer  "edi_user_id", limit: 4
    t.integer  "role_id",     limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "trader_places", force: :cascade do |t|
    t.integer  "trader_id",  limit: 4
    t.integer  "place_id",   limit: 4
    t.integer  "place_type", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "traders", force: :cascade do |t|
    t.string   "code",                                            limit: 255
    t.string   "name_kanji",                                      limit: 255
    t.string   "name_kana",                                       limit: 255
    t.string   "tel_name",                                        limit: 255
    t.integer  "tel",                                             limit: 4
    t.string   "fax_name",                                        limit: 255
    t.integer  "fax",                                             limit: 4
    t.string   "email",                                           limit: 255
    t.string   "division",                                        limit: 255
    t.string   "memo",                                            limit: 255
    t.string   "industriaial_waste_excellent_certification_type", limit: 255
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
  end

  create_table "transports", force: :cascade do |t|
    t.integer  "parent_id",                    limit: 4
    t.integer  "manifest_id",                  limit: 4
    t.integer  "collection_trader_id",         limit: 4
    t.integer  "collection_trader_address_id", limit: 4
    t.integer  "car_id",                       limit: 4
    t.integer  "from_place_id",                limit: 4
    t.integer  "to_place_id",                  limit: 4
    t.string   "transport_method",             limit: 255
    t.boolean  "transport_flg"
    t.boolean  "transshipment_storage_flg"
    t.integer  "valuable_flg",                 limit: 4
    t.float    "valuable_amount",              limit: 24
    t.integer  "valuable_amount_unit_id",      limit: 4
    t.datetime "accepted_at"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "waste_registrations", force: :cascade do |t|
    t.string   "code",          limit: 255
    t.string   "name",          limit: 255
    t.integer  "quantity",      limit: 4
    t.integer  "unit_id",       limit: 4
    t.integer  "waste_type_id", limit: 4
    t.integer  "shape_id",      limit: 4
    t.integer  "trader_id",     limit: 4
    t.integer  "package_id",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "waste_registrations", ["package_id"], name: "index_waste_registrations_on_package_id", using: :btree
  add_index "waste_registrations", ["shape_id"], name: "index_waste_registrations_on_shape_id", using: :btree
  add_index "waste_registrations", ["trader_id"], name: "index_waste_registrations_on_trader_id", using: :btree
  add_index "waste_registrations", ["unit_id"], name: "index_waste_registrations_on_unit_id", using: :btree
  add_index "waste_registrations", ["waste_type_id"], name: "index_waste_registrations_on_waste_type_id", using: :btree

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

  add_foreign_key "waste_registrations", "packages"
  add_foreign_key "waste_registrations", "shapes"
  add_foreign_key "waste_registrations", "traders"
  add_foreign_key "waste_registrations", "units"
  add_foreign_key "waste_registrations", "waste_types"
end
