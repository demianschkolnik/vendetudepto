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

  create_table "clientes", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "nombre"
    t.text "telefono"
    t.text "mail"
    t.text "fechacompra"
    t.float "preciomin", limit: 53
    t.float "preciomax", limit: 53
    t.float "utilmin", limit: 53
    t.float "utilmax", limit: 53
    t.float "totalmin", limit: 53
    t.float "totalmax", limit: 53
    t.float "latmin", limit: 53
    t.float "latmax", limit: 53
    t.float "lonmin", limit: 53
    t.float "lonmax", limit: 53
    t.float "dormitoriosmin", limit: 53
    t.float "dormitoriosmax", limit: 53
    t.float "banosmin", limit: 53
    t.float "banosmax", limit: 53
    t.float "estacionamientos", limit: 53
    t.text "tipo"
    t.text "operacion"
    t.text "estado"
    t.text "region"
    t.text "comuna1"
    t.text "comuna2"
    t.text "comuna3"
    t.text "comuna4"
    t.text "comuna5"
    t.text "comuna6"
    t.text "metrodistance"
    t.text "linea"
    t.text "lineab"
    t.text "lineac"
    t.integer "activo"
    t.float "rentmin"
    t.integer "sendmail"
    t.text "prioridad"
  end

  create_table "orientacion", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre", limit: 10
  end

  create_table "pedidos", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "mail", null: false
    t.string "telefono", limit: 20
    t.string "descripcion"
    t.string "tipo", null: false
    t.string "operacion", null: false
    t.string "region"
    t.string "comuna"
    t.string "direccion", null: false
    t.bigint "superficie"
    t.integer "dorms"
    t.integer "bano"
    t.integer "estacionamiento"
    t.integer "anio"
    t.integer "piso"
    t.integer "sup_util"
    t.integer "num_piso"
    t.integer "constr"
    t.integer "terreno"
    t.integer "privado"
    t.integer "norte"
    t.integer "sur"
    t.integer "este"
    t.integer "oeste"
    t.integer "activo"
    t.string "hash_id"
  end

end
