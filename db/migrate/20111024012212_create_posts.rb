class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :usuario_id
      t.integer :usuario_post
      t.string  :texto
      t.timestamps
    end
  end
end
