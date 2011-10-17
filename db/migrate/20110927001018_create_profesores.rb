class CreateProfesores < ActiveRecord::Migration
  def change
    create_table :profesores do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :telefono
      t.timestamps
    end
  end
end
