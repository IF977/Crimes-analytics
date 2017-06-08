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

ActiveRecord::Schema.define(version: 20170603152545) do

  create_table "chamados", force: :cascade do |t|
    t.string   "numero_solicitacao"
    t.date     "data_solicitacao"
    t.string   "sexo"
    t.string   "idade"
    t.string   "codigo_bairro"
    t.string   "bairro"
    t.string   "origem_chamado"
    t.string   "situacao_chamado"
    t.string   "tipo_chamada"
    t.string   "motivo_descarte"
    t.string   "tipo_ocorrencia"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "coments", force: :cascade do |t|
    t.string   "email"
    t.text     "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
