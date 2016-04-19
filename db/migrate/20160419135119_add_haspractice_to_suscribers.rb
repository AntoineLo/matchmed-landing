class AddHaspracticeToSuscribers < ActiveRecord::Migration
  def change
    add_column :suscribers, :has_practice, :boolean
  end
end
