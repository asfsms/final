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

ActiveRecord::Schema.define(version: 0) do

  create_table "answers", force: :cascade do |t|
    t.integer "q_id"
    t.integer "user_id"
    t.text    "a_text"
    t.string  "a_date"
    t.integer "num_likes"
  end

  add_index "answers", ["q_id"], name: "index_answers_on_q_id"
  add_index "answers", ["user_id"], name: "index_answers_on_user_id"

  create_table "followers", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.string  "start_date"
  end

  add_index "followers", ["followed_id"], name: "index_followers_on_followed_id"
  add_index "followers", ["follower_id"], name: "index_followers_on_follower_id"

  create_table "questions", force: :cascade do |t|
    t.integer "user_id"
    t.text    "q_text"
    t.string  "q_date"
    t.integer "num_likes"
  end

  add_index "questions", ["user_id"], name: "index_questions_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.text    "linkedin"
    t.text    "career_goal"
    t.text    "career_status"
    t.boolean "advice_seeker", default: false
    t.boolean "mentor",        default: false
    t.boolean "anonymous",     default: false
    t.string  "year_joined"
    t.integer "num_followers"
  end

end
