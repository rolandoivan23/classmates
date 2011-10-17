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

ActiveRecord::Schema.define(:version => 20111009030945) do

  create_table "alumno_materias", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "alumno_id"
    t.integer  "materia_id"
  end

  create_table "alumnos", :force => true do |t|
    t.integer  "matricula"
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.integer  "grado"
    t.boolean  "post_pendientes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
  end

  create_table "grupos", :force => true do |t|
    t.string   "clave"
    t.integer  "materia_id"
    t.integer  "profesor_id"
    t.integer  "cupo_maximo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materia_alumnos", :force => true do |t|
    t.integer  "alumno_id"
    t.integer  "materia_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materias", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "semestre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profesores", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuario_sessions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "login",               :limit => 100
    t.string   "nombre",              :limit => 100
    t.string   "apellido_paterno",    :limit => 100
    t.string   "apellido_materno",    :limit => 100
    t.date     "fecha_alta",                         :default => '2011-09-28'
    t.string   "email",               :limit => 100
    t.string   "persistence_token",                                            :null => false
    t.string   "crypted_password",                                             :null => false
    t.string   "password_salt",                                                :null => false
    t.string   "single_access_token",                                          :null => false
    t.string   "perishable_token",                                             :null => false
    t.integer  "login_count",                        :default => 0,            :null => false
    t.integer  "failed_login_count",                 :default => 0,            :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "roles",                              :default => "--- []"
    t.string   "matricula"
    t.integer  "grado"
    t.integer  "post_pendientes"
  end

end
