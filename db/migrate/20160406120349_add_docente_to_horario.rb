class AddDocenteToHorario < ActiveRecord::Migration
  def change
    add_reference :horarios, :docente, index: true, foreign_key: true
  end
end
