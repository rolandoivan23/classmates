class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :clave
      t.integer :materia_id
      t.integer :profesor_id
      t.integer :cupo_maximo
      t.timestamps
    end
  end
end
