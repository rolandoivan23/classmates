class Usuario < ActiveRecord::Base
    acts_as_authentic do |config|
    #Configuration Options
    config.crypto_provider = Authlogic::CryptoProviders::MD5
  
  end

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  easy_roles :roles

  has_many :materias, :class_name => "AlumnoMaterias", :foreign_key => "alumno_id"

  has_many :posts

 
 
end
