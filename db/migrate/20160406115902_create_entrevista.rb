class CreateEntrevista < ActiveRecord::Migration
  def change
    create_table :entrevista do |t|
      t.boolean :asistencia
      t.string :observacion
      t.boolean :tipoentrevista

      t.timestamps null: false
    end
  end
end
