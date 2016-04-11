class Suscriber < ActiveRecord::Base

  validates :email, uniqueness: true

end
