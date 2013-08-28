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

ActiveRecord::Schema.define(:version => 20130326114903) do

  create_table "availabilities", :force => true do |t|
    t.integer  "train_number"
    t.date     "travel_date"
    t.integer  "first_AC"
    t.integer  "second_AC"
    t.integer  "third_AC"
    t.integer  "chair_car"
    t.integer  "sleeper"
    t.integer  "sitting"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "coaches", :force => true do |t|
    t.integer  "train_number"
    t.integer  "first_ac"
    t.integer  "second_ac"
    t.integer  "third_ac"
    t.integer  "chair_car"
    t.integer  "sleeper"
    t.integer  "sitting"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "costs", :force => true do |t|
    t.decimal  "first_ac",   :precision => 10, :scale => 2
    t.decimal  "second_ac",  :precision => 10, :scale => 2
    t.decimal  "third_ac",   :precision => 10, :scale => 2
    t.decimal  "chair_car",  :precision => 10, :scale => 2
    t.decimal  "sleeper",    :precision => 10, :scale => 2
    t.decimal  "sitting",    :precision => 10, :scale => 2
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "hint_questions", :force => true do |t|
    t.string   "hint_question"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "routes", :force => true do |t|
    t.string   "source"
    t.string   "destination"
    t.string   "route",       :limit => 200
    t.integer  "distance"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "seat_availability_details", :force => true do |t|
    t.integer  "train_number"
    t.date     "travel_date"
    t.integer  "first_AC"
    t.integer  "second_AC"
    t.integer  "third_AC"
    t.integer  "chair_car"
    t.integer  "sleeper"
    t.integer  "sitting"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "seats", :force => true do |t|
    t.integer  "FAC"
    t.integer  "SAC"
    t.integer  "TAC"
    t.integer  "CC"
    t.integer  "SL"
    t.integer  "SS"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stations", :force => true do |t|
    t.string   "station_name"
    t.string   "station_code"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "temp_reservations", :force => true do |t|
    t.integer  "train_number"
    t.string   "source"
    t.string   "destination"
    t.date     "travel_date"
    t.string   "first_pasenger_name"
    t.string   "first_pasenger_gender"
    t.integer  "first_pasenger_age"
    t.string   "first_passenger_id_card"
    t.string   "first_passenger_id_card_number"
    t.string   "second_pasenger_name"
    t.string   "second_pasenger_gender"
    t.integer  "second_pasenger_age"
    t.string   "second_passenger_id_card"
    t.string   "second_passenger_id_card_number"
    t.string   "third_pasenger_name"
    t.string   "third_pasenger_gender"
    t.integer  "third_pasenger_age"
    t.string   "third_passenger_id_card"
    t.string   "third_passenger_id_card_number"
    t.string   "status"
    t.decimal  "total_cost",                      :precision => 10, :scale => 0
    t.string   "pnr_number"
    t.datetime "created_at",                                                     :null => false
    t.datetime "updated_at",                                                     :null => false
  end

  create_table "ticket_reservations", :force => true do |t|
    t.integer  "train_number"
    t.string   "source"
    t.string   "destination"
    t.date     "travel_date"
    t.string   "first_pasenger_name"
    t.string   "first_pasenger_gender"
    t.integer  "first_pasenger_age"
    t.string   "first_passenger_id_card"
    t.string   "first_passenger_id_card_number"
    t.string   "second_pasenger_name"
    t.string   "second_pasenger_gender"
    t.integer  "second_pasenger_age"
    t.string   "second_passenger_id_card"
    t.string   "second_passenger_id_card_number"
    t.string   "third_pasenger_name"
    t.string   "third_pasenger_gender"
    t.integer  "third_pasenger_age"
    t.string   "third_passenger_id_card"
    t.string   "third_passenger_id_card_number"
    t.string   "status"
    t.decimal  "total_cost",                      :precision => 10, :scale => 0
    t.string   "pnr_number"
    t.datetime "created_at",                                                     :null => false
    t.datetime "updated_at",                                                     :null => false
  end

  create_table "train_types", :force => true do |t|
    t.string   "train_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trains", :force => true do |t|
    t.integer  "route_id"
    t.integer  "train_number"
    t.string   "train_name"
    t.time     "departure_time"
    t.string   "travel_time",    :limit => 150
    t.string   "train_type"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "pin"
    t.integer  "mobile"
    t.datetime "date_of_birth"
    t.string   "gender"
    t.string   "hint_question"
    t.string   "hint_answer"
    t.datetime "created_date"
    t.string   "one_time_password"
    t.integer  "count_value"
    t.integer  "status",            :default => 1, :null => false
    t.string   "last_login"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "last_logged_in"
  end

end
