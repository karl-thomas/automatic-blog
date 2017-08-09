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

ActiveRecord::Schema.define(version: 20170807054255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "twitter_records", force: :cascade do |t|
    t.string "screen_name"
    t.string "description"
    t.integer "followers_count"
    t.integer "friends_count"
    t.integer "tweets_count"
    t.integer "favorites_count"
    t.integer "listed_count"
    t.integer "recent_tweets"
    t.integer "recent_mentions"
    t.integer "recent_replies"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "recent_friends"
    t.integer "recent_followers"
    t.integer "recent_favorites"
    t.integer "recent_lists"
    t.integer "total_differences"
  end

end
