class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.integer :matricula
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.integer :grado
      t.boolean :post_pendientes
      t.timestamps
    end
  end
end
