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

ActiveRecord::Schema.define(version: 20140423085658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apps", force: true do |t|
    t.string   "name",       null: false
    t.string   "token",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "apps", ["name"], name: "index_apps_on_name", using: :btree
  add_index "apps", ["token"], name: "index_apps_on_token", using: :btree

  create_table "attachments", force: true do |t|
    t.integer "email_id",   null: false
    t.text    "attachment"
  end

  add_index "attachments", ["email_id"], name: "index_attachments_on_email_id", using: :btree

  create_table "emails", force: true do |t|
    t.integer  "app_id",     null: false
    t.string   "from",       null: false
    t.string   "to",         null: false
    t.string   "cc"
    t.string   "bcc"
    t.string   "subject"
    t.text     "text_part",  null: false
    t.text     "html_part"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emails", ["app_id"], name: "index_emails_on_app_id", using: :btree
  add_index "emails", ["from"], name: "index_emails_on_from", using: :btree
  add_index "emails", ["subject"], name: "index_emails_on_subject", using: :btree
  add_index "emails", ["to"], name: "index_emails_on_to", using: :btree

end
