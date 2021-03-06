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

ActiveRecord::Schema.define(version: 20180624223928) do

  create_table "estantes", force: :cascade do |t|
    t.string "nome"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exemplars", force: :cascade do |t|
    t.string "nome"
    t.string "book_id"
    t.string "estante_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "livros", force: :cascade do |t|
    t.string "titulo"
    t.string "nome_do_autor"
    t.date "data_da_publicacao"
    t.string "codigo"
    t.string "genero_literario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resenhas", force: :cascade do |t|
    t.string "descricao"
    t.string "user_id"
    t.string "livro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nome"
    t.string "apelido"
    t.string "telefone"
    t.string "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
