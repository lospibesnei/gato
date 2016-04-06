class CreateDocentes < ActiveRecord::Migration
  def change
    create_table :docentes do |t|
      t.integer :nropeople
      t.string :apellido
      t.string :nombre
      t.string :emailuap
      t.boolean :sexo
      t.date :fechancimiento
      t.string :carrera
      t.date :añolectivo

      t.timestamps null: false
    end
  end
end
