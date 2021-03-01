# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_23_220651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capitals", force: :cascade do |t|
    t.string "usstate"
    t.string "abbr"
    t.string "capital"
    t.string "shape"
  end

  create_table "generals", force: :cascade do |t|
    t.string "abbr"
    t.date "year"
    t.integer "order"
    t.string "motto"
    t.string "nickname", default: [], array: true
    t.integer "population"
    t.integer "poprank"
    t.integer "size"
    t.integer "sizerank"
    t.string "largestcity"
    t.string "website"
    t.string "bird"
    t.string "birdimg"
    t.string "flower"
    t.string "flowerimg"
    t.string "tree"
    t.string "treeimg"
  end

  create_table "politics", force: :cascade do |t|
    t.string "abbr"
    t.string "governor"
    t.string "senator", default: [], array: true
    t.string "congressmen", default: [], array: true
    t.string "flag"
    t.integer "electoral"
  end

  create_table "sports_teams", force: :cascade do |t|
    t.string "teamname"
    t.string "abbr"
    t.string "league"
    t.string "homefield"
    t.string "logo"
    t.string "website"
  end

end
