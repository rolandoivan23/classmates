class AddToUsuariosAvatar < ActiveRecord::Migration
  def up
    add_column :usuarios, :avatar_file_name,    :string
    add_column :usuarios, :avatar_content_type, :string
    add_column :usuarios, :avatar_file_size,    :integer
    add_column :usuarios, :avatar_updated_at,   :datetime
  end

  def down
    remove_column :usuarios, :avatar_file_name,    :string
    remove_column :usuarios, :avatar_content_type, :string
    remove_column :usuarios, :avatar_file_size,    :integer
    remove_column :usuarios, :avatar_updated_at,   :datetime
  end
end
