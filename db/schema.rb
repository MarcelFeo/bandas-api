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

ActiveRecord::Schema[7.0].define(version: 2023_07_26_141944) do
  create_table "albums", force: :cascade do |t|
    t.string "title"
    t.integer "banda_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["banda_id"], name: "index_albums_on_banda_id"
  end

  create_table "bandas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musicas", force: :cascade do |t|
    t.string "title"
    t.integer "banda_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["banda_id"], name: "index_musicas_on_banda_id"
  end

  create_table "musicos", force: :cascade do |t|
    t.string "name"
    t.integer "banda_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["banda_id"], name: "index_musicos_on_banda_id"
  end

  add_foreign_key "albums", "bandas"
  add_foreign_key "musicas", "bandas"
  add_foreign_key "musicos", "bandas"
end
