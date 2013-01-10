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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120816170508) do

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "index"
    t.string   "create"
    t.string   "destroy"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categoria", :force => true do |t|
    t.string   "nombre"
    t.integer  "id_ciudad"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ciudads", :force => true do |t|
    t.string   "nombre"
    t.integer  "id_empresa"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cupons", :force => true do |t|
    t.string   "descripcion"
    t.string   "descuento"
    t.integer  "cantidad"
    t.date     "fechaini"
    t.date     "fechafin"
    t.integer  "id_empresa"
    t.integer  "id_supercategoria"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "departamentos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "descripcions", :force => true do |t|
    t.string   "descripcion"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.integer  "id_empresa"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "empresas", :force => true do |t|
    t.string   "nombre"
    t.integer  "estado"
    t.string   "imagen"
    t.integer  "id_categoria"
    t.integer  "id_usuario"
    t.integer  "id_departamento"
    t.integer  "id_ciudad"
    t.string   "direccion"
    t.string   "pagina"
    t.string   "telefono"
    t.text     "descripcion"
    t.text     "horario"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "estados", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "personas", :force => true do |t|
    t.string   "ci"
    t.string   "nombre"
    t.string   "apaterno"
    t.string   "amaterno"
    t.string   "telefono"
    t.integer  "id_usuario"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "promocions", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.date     "fechaini"
    t.date     "fechafin"
    t.integer  "id_empresa"
    t.integer  "id_supercategoria"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "sliders", :force => true do |t|
    t.string   "image"
    t.integer  "id_empresa"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "supercategoria", :force => true do |t|
    t.string   "nombre"
    t.integer  "id_categoria"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "tipo"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

end
