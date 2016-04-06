class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.integer :nroalumno
      t.string :apellido
      t.string :nombre
      t.string :emailuap
      t.boolean :sexo
      t.boolean :vidaestudiantil
      t.date :fechanacimiento
      t.string :carrera
      t.date :cohorte
      t.date :añolectivo
      t.boolean :matriculado

      t.timestamps null: false
    end
  end
end
