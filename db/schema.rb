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

ActiveRecord::Schema.define(:version => 20100809134903) do

  create_table "dividends", :force => true do |t|
    t.integer  "dividend"
    t.integer  "dividend_price"
    t.date     "date"
    t.date     "xddate"
    t.integer  "share_id"
    t.integer  "shares_held_on_xddate"
    t.integer  "tax"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "investments", :force => true do |t|
    t.integer  "investment"
    t.date     "date"
    t.integer  "share_id"
    t.integer  "pps"
    t.integer  "duty"
    t.integer  "commission"
    t.integer  "shares_purchased"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shares", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "current_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
