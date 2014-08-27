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

ActiveRecord::Schema.define(version: 20140826233148) do

  create_table "categories", force: true do |t|
    t.integer  "entity_id"
    t.string   "category"
    t.string   "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_attributes", force: true do |t|
    t.integer  "category_id"
    t.string   "attribute_key"
    t.string   "attribute_value"
    t.string   "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entities", force: true do |t|
    t.string   "entity_type"
    t.string   "entity_key"
    t.string   "entity_value"
    t.string   "created_by"
    t.string   "expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_attributes", force: true do |t|
    t.integer  "category_id"
    t.string   "attribute_key"
    t.string   "attribute_value"
    t.string   "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_xrefs", force: true do |t|
    t.integer  "category_id"
    t.integer  "left_entity_id"
    t.integer  "right_entity_id"
    t.string   "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workflow_definitions", force: true do |t|
    t.integer  "client_id"
    t.integer  "parent_definition_id"
    t.string   "version"
    t.string   "created_by"
    t.date     "expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workflow_event_attributes", force: true do |t|
    t.integer  "workflow_event_id"
    t.string   "attribute_key"
    t.string   "attribute_value"
    t.string   "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workflow_transaction_attributes", force: true do |t|
    t.integer  "workflow_transaction_id"
    t.string   "attribute_key"
    t.string   "attribute_value"
    t.string   "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workflow_transaction_events", force: true do |t|
    t.integer  "workflow_transaction_id"
    t.string   "event_name"
    t.string   "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workflow_transactions", force: true do |t|
    t.integer  "workflow_definition_id"
    t.string   "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
