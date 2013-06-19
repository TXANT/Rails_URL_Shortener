# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 3) do

  create_table "books", :force => true do |t|
    t.text    "name"
    t.text    "author"
    t.integer "ISN"
    t.integer "quantity"
    t.text    "comment"
    t.text    "link"
  end

  add_index "books", ["ISN"], :name => "isn_unique", :unique => true

  create_table "cc_seminars", :force => true do |t|
    t.text     "seminar_id"
    t.integer  "grade"
    t.integer  "reg_year"
    t.date     "input_date"
    t.text     "content"
    t.date     "from_date"
    t.date     "to_date"
    t.integer  "createuser_id"
    t.integer  "updateuser_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plugin_schema_info", :id => false, :force => true do |t|
    t.string  "plugin_name"
    t.integer "version"
  end

  create_table "subjects", :force => true do |t|
    t.text    "name"
    t.integer "count"
  end

  create_table "usr_homes", :force => true do |t|
    t.string "usr_name", :limit => 10
    t.string "photo",    :limit => 100
    t.string "email",    :limit => 20
  end

  create_table "usr_posts", :force => true do |t|
    t.text    "body"
    t.integer "usr_id"
  end

end
