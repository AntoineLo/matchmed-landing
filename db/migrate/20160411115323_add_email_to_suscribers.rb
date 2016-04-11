class AddEmailToSuscribers < ActiveRecord::Migration
  def change
    add_column :suscribers, :email, :string
  end
end
