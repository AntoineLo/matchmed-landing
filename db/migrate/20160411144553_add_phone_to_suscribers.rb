class AddPhoneToSuscribers < ActiveRecord::Migration
  def change
    add_column :suscribers, :phone, :string
    add_column :suscribers, :name, :string
  end
end
