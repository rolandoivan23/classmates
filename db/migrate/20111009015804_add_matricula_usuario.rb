class AddMatriculaUsuario < ActiveRecord::Migration
   def change
    add_column :usuarios, :matricula, :string
    add_column :usuarios, :grado, :integer
    add_column :usuarios, :post_pendientes, :integer
  end
end
