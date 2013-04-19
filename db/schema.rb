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

ActiveRecord::Schema.define(:version => 20130419171455) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "activities", :force => true do |t|
    t.integer  "user_id"
    t.integer  "facility_id"
    t.string   "activity_type"
    t.date     "date_completed"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "facilities", :force => true do |t|
    t.string   "facility_type"
    t.string   "name"
    t.integer  "holes"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "venue_id"
  end

  create_table "holes", :force => true do |t|
    t.integer  "tee_id"
    t.integer  "number"
    t.integer  "par_men"
    t.integer  "par_women"
    t.integer  "handicap_men"
    t.integer  "handicap_women"
    t.integer  "length"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "played_holes", :force => true do |t|
    t.integer  "round_id"
    t.integer  "hole_number"
    t.integer  "strokes"
    t.string   "club_off_tee"
    t.integer  "tee_shot_distance"
    t.string   "fairway"
    t.boolean  "clear_approach"
    t.string   "approach_club"
    t.integer  "approach_distance"
    t.string   "approach"
    t.integer  "approach_miss_distance"
    t.integer  "chips"
    t.integer  "sand_shots"
    t.boolean  "up_and_down"
    t.boolean  "sand_save"
    t.integer  "putts"
    t.integer  "first_putt_distance"
    t.integer  "made_putt_distance"
    t.integer  "penalties"
    t.integer  "stroke_and_distance_penalties"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "rounds", :force => true do |t|
    t.integer  "activity_id"
    t.integer  "tee_id"
    t.string   "round_type"
    t.integer  "strokes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tees", :force => true do |t|
    t.integer  "facility_id"
    t.string   "name"
    t.decimal  "rating_men"
    t.decimal  "rating_front_men"
    t.decimal  "rating_back_men"
    t.integer  "slope_men"
    t.integer  "slope_front_men"
    t.integer  "slope_back_men"
    t.decimal  "rating_women"
    t.decimal  "rating_front_women"
    t.decimal  "rating_back_women"
    t.integer  "slope_women"
    t.integer  "slope_front_women"
    t.integer  "slope_back_women"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "website"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
