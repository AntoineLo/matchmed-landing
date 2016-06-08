class Suscriber < ActiveRecord::Base

  validates :email, presence: true

end
