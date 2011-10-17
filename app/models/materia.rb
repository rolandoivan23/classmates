class Materia < ActiveRecord::Base
  set_table_name :materias
  has_many :alumnos, :class_name => "MateriaAlumnos", :foreign_key => "materia_id"

end
