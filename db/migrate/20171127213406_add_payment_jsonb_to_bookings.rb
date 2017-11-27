class AddPaymentJsonbToBookings < ActiveRecord::Migration[5.1]
  def change
    change_column :bookings, :payment, :jsonb
  end
end
