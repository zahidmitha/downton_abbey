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

ActiveRecord::Schema.define(:version => 20130519234315) do

  create_table "aristocrats", :force => true do |t|
    t.string "first_name"
    t.string "email"
    t.string "surname"
  end

  add_index "aristocrats", ["surname"], :name => "index_aristocrats_on_surname"

  create_table "aristocrats_clubs", :force => true do |t|
    t.integer "aristocrat_id"
    t.integer "club_id"
  end

  add_index "aristocrats_clubs", ["aristocrat_id"], :name => "index_aristocrats_clubs_on_aristocrat_id"
  add_index "aristocrats_clubs", ["club_id"], :name => "index_aristocrats_clubs_on_club_id"

  create_table "clubs", :force => true do |t|
    t.string "name"
  end

  add_index "clubs", ["name"], :name => "index_clubs_on_name"

  create_table "servants", :force => true do |t|
    t.string  "last_name"
    t.string  "occupation"
    t.string  "nickname"
    t.integer "aristocrat_id"
    t.integer "age"
  end

  add_index "servants", ["age"], :name => "index_servants_on_age"
  add_index "servants", ["aristocrat_id"], :name => "index_servants_on_aristocrat_id"

end
