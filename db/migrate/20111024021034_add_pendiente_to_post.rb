class AddPendienteToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pendiente, :boolean
  end
end
