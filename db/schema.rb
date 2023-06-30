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

ActiveRecord::Schema[7.0].define(version: 2023_06_30_024004) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "alcoholicgrade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "yeasttype"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "house"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cliente", id: false, force: :cascade do |t|
    t.string "nombre", limit: 50
    t.string "apellido", limit: 50
  end

  create_table "colaborators", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "direction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "demo", id: false, force: :cascade do |t|
    t.integer "id", null: false
    t.string "name", limit: 200, null: false
    t.text "hint", null: false
  end

  create_table "documentaryfilms", force: :cascade do |t|
    t.string "name"
    t.string "synopsis"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "url_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "journalists", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mock_products", id: false, force: :cascade do |t|
    t.integer "id"
    t.string "product_name", limit: 50
    t.integer "price"
    t.string "stock", limit: 50
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "synopsis"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nota", id: false, force: :cascade do |t|
    t.integer "notas_id"
    t.integer "nota"
    t.integer "usuario_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stock"
  end

  create_table "series", force: :cascade do |t|
    t.string "name"
    t.string "synopsis"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.string "description"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
    t.string "email"
  end

  create_table "usuario", primary_key: "usuario_id", id: :integer, default: nil, force: :cascade do |t|
    t.string "nombre", limit: 50
    t.integer "edad"
  end

  create_table "worldcupteams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "nota", "usuario", primary_key: "usuario_id", name: "nota_usuario_id_fkey"
end
