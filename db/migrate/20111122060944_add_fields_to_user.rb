class AddFieldsToUser < ActiveRecord::Migration
  def self.up
    add_column :usuarios, :openid_identifier, :string
    add_index :usuarios, :openid_identifier

    change_column :usuarios, :login, :string, :default => nil, :null => true
    change_column :usuarios, :crypted_password, :string, :default => nil, :null => true
    change_column :usuarios, :password_salt, :string, :default => nil, :null => true
  end

  def self.down
    remove_column :usuarios, :openid_identifier

    [:login, :crypted_password, :password_salt].each do |field|
      Usuario.all(:conditions => "#{field} is NULL").each { |usuario| usuario.update_attribute(field, "") if usuario.send(field).nil? }
      change_column :usuarios, field, :string, :default => "", :null => false
    end
  end
end
