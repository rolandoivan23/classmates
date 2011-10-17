class AddToAlumnoMaterias < ActiveRecord::Migration
  def change
    add_column :alumno_materias, :alumno_id, :integer
    add_column :alumno_materias, :materia_id, :integer

  end
end
