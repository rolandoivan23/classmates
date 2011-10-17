class CreateMateriaAlumnos < ActiveRecord::Migration
  def change
    create_table :materia_alumnos do |t|
      t.integer :alumno_id
      t.integer :materia_id
      t.timestamps
    end
  end
end
