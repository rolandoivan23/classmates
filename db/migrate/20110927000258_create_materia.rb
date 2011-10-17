class CreateMateria < ActiveRecord::Migration
  def change
    create_table :materias do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :semestre
      t.timestamps
    end
  end
end
