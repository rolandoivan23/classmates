class Profesor < ActiveRecord::Base
   validates :nombre, :presence => true
end
