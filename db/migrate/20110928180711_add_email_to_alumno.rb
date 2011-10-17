class AddEmailToAlumno < ActiveRecord::Migration
  def change
    add_column :alumnos, :email, :string
  end
end
