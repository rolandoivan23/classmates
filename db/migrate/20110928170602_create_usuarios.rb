class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :login,              :limit => 100
      t.string :nombre,             :limit => 100
      t.string :apellido_paterno,   :limit => 100
      t.string :apellido_materno,   :limit => 100
      t.date :fecha_alta,           :default => Date.today
      t.string :email,              :limit => 100

      t.string :persistence_token, :null => false

      t.string :crypted_password, :null => false
      t.string :password_salt, :null => false
      t.string :single_access_token, :null => false
      t.string :perishable_token, :null => false
      t.integer :login_count, :null => false, :default => 0
      t.integer :failed_login_count, :null => false, :default => 0
      t.datetime :last_request_at
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.string :current_login_ip
      t.string :last_login_ip

      t.timestamps
    end
  end
end
