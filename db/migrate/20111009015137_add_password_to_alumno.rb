class AddPasswordToAlumno < ActiveRecord::Migration
  def change
    add_column :alumnos, :password, :string
    add_column :alumnos, :password_confirmation, :string
    
  end
end
