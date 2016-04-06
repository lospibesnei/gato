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

ActiveRecord::Schema.define(version: 20160406120349) do

  create_table "alumnos", force: :cascade do |t|
    t.integer  "nroalumno"
    t.string   "apellido"
    t.string   "nombre"
    t.string   "emailuap"
    t.boolean  "sexo"
    t.boolean  "vidaestudiantil"
    t.date     "fechanacimiento"
    t.string   "carrera"
    t.date     "cohorte"
    t.date     "añolectivo"
    t.boolean  "matriculado"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "aulas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "derivacions", force: :cascade do |t|
    t.string   "observaciones"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "entrevista_id"
    t.integer  "departamento_id"
  end

  add_index "derivacions", ["departamento_id"], name: "index_derivacions_on_departamento_id"
  add_index "derivacions", ["entrevista_id"], name: "index_derivacions_on_entrevista_id"

  create_table "docentes", force: :cascade do |t|
    t.integer  "nropeople"
    t.string   "apellido"
    t.string   "nombre"
    t.string   "emailuap"
    t.boolean  "sexo"
    t.date     "fechancimiento"
    t.string   "carrera"
    t.date     "añolectivo"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "entrevista", force: :cascade do |t|
    t.boolean  "asistencia"
    t.string   "observacion"
    t.boolean  "tipoentrevista"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "alumno_id"
    t.integer  "horario_id"
    t.integer  "motivo_id"
    t.integer  "aula_id"
  end

  add_index "entrevista", ["alumno_id"], name: "index_entrevista_on_alumno_id"
  add_index "entrevista", ["aula_id"], name: "index_entrevista_on_aula_id"
  add_index "entrevista", ["horario_id"], name: "index_entrevista_on_horario_id"
  add_index "entrevista", ["motivo_id"], name: "index_entrevista_on_motivo_id"

  create_table "horarios", force: :cascade do |t|
    t.time     "hora"
    t.date     "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "docente_id"
  end

  add_index "horarios", ["docente_id"], name: "index_horarios_on_docente_id"

  create_table "motivos", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
