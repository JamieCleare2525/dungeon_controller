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

ActiveRecord::Schema.define(version: 2018_08_28_163619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animal_totem_traits", force: :cascade do |t|
    t.integer "animal_totem_id"
    t.integer "trait_id"
  end

  create_table "animal_totems", force: :cascade do |t|
    t.string "name"
    t.integer "land_speed"
    t.integer "air_speed"
    t.integer "water_speed"
    t.integer "attack"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "title"
    t.integer "dungeon_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "cards", force: :cascade do |t|
    t.integer "deck_id"
    t.string "suit"
    t.string "rank"
    t.integer "value"
    t.string "colour"
    t.boolean "drawn", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hand_id"
  end

  create_table "character_classes", force: :cascade do |t|
    t.integer "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_instances", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "character_id"
    t.bigint "campaign_id"
    t.index ["campaign_id"], name: "index_character_instances_on_campaign_id"
    t.index ["character_id"], name: "index_character_instances_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "actable_type"
    t.bigint "actable_id"
    t.index ["actable_type", "actable_id"], name: "index_characters_on_actable_type_and_actable_id"
  end

  create_table "decks", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dnd_characters", force: :cascade do |t|
    t.string "name"
    t.integer "hit_points"
    t.string "size"
    t.integer "speed"
    t.string "race"
    t.string "character_class"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "level", default: 1
  end

  create_table "friendships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "friend_id"
    t.boolean "accepted", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hands", force: :cascade do |t|
    t.integer "campaign_id"
    t.integer "user_id"
    t.integer "deck_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.integer "name"
  end

  create_table "traits", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "effect_type"
    t.integer "metric"
    t.string "affected_party"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transformers_characters", force: :cascade do |t|
    t.string "name"
    t.integer "hit_points"
    t.string "size"
    t.integer "speed"
    t.string "allegiance"
    t.string "character_class"
    t.integer "strength"
    t.integer "intelligence"
    t.integer "endurance"
    t.integer "rank", default: 1
    t.integer "courage"
    t.integer "firepower"
    t.integer "skill"
    t.boolean "prime_cron", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visionaries_characters", force: :cascade do |t|
    t.string "name"
    t.integer "hit_points"
    t.integer "speed"
    t.string "allegiance"
    t.integer "attack"
    t.integer "animal_totem_id"
  end

end
