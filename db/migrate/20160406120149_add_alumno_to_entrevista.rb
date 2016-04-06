class AddAlumnoToEntrevista < ActiveRecord::Migration
  def change
    add_reference :entrevista, :alumno, index: true, foreign_key: true
  end
end
