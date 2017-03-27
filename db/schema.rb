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

ActiveRecord::Schema.define(version: 20170327174327) do

  create_table "etudiants", force: :cascade do |t|
    t.string   "Nom"
    t.string   "Prenom"
    t.date     "Datenaissance"
    t.string   "Ville"
    t.string   "Sexe"
    t.string   "Mail"
    t.string   "Telephone"
    t.text     "Interets"
    t.text     "Descrption"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "marmitons", force: :cascade do |t|
    t.string   "Nom"
    t.string   "Prenom"
    t.date     "Datenaissance"
    t.string   "Ville"
    t.string   "Sexe"
    t.string   "Mail"
    t.string   "Telephone"
    t.text     "Interets"
    t.text     "Descrption"
    t.text     "Adresse"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "repas", force: :cascade do |t|
    t.datetime "Date"
    t.string   "menu"
    t.string   "location"
    t.string   "organisator"
    t.string   "participants"
    t.integer  "participantnumber"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "nickname"
    t.boolean  "Gender"
    t.date     "BirthDate"
    t.string   "City"
    t.string   "Mail"
    t.string   "Phone"
    t.string   "Interest"
    t.text     "Description"
    t.string   "Password"
    t.boolean  "Type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
