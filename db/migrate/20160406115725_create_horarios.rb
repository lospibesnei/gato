class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.time :hora
      t.date :fecha

      t.timestamps null: false
    end
  end
end
