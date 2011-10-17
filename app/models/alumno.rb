class Alumno < ActiveRecord::Base
   has_many :materias, :class_name => "AlumnoMaterias", :foreign_key => "alumno_id"
end
