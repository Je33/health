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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130401120626) do

  create_table "articles", :force => true do |t|
    t.integer  "doctor_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "consultations", :force => true do |t|
    t.string   "client_email"
    t.string   "client_fio"
    t.text     "question"
    t.text     "response_message"
    t.integer  "doctor_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "doctors", :force => true do |t|
    t.string   "fio"
    t.text     "description"
    t.integer  "speciality_id"
    t.integer  "worktime_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "article_id"
  end

  create_table "order_items", :force => true do |t|
    t.integer  "receipt_time"
    t.text     "result_message"
    t.integer  "order_id"
    t.integer  "doctor_id"
    t.integer  "service_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "orders", :force => true do |t|
    t.string   "client_fio"
    t.string   "client_email"
    t.string   "client_phone"
    t.string   "sum"
    t.integer  "report"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "services", :force => true do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.text     "description"
    t.integer  "cost"
    t.integer  "speciality_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "specialities", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "worktimes", :force => true do |t|
    t.integer  "duration"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.time     "start_day"
    t.time     "end_day"
    t.date     "date"
  end

end
