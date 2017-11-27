class AddMonetizeToLocationsAndBookings < ActiveRecord::Migration[5.1]
  def change
    add_monetize :bookings, :price, currency: { present: false }
    add_monetize :locations, :rate_by_hour, currency: { present: false }
    add_monetize :locations, :rate_by_day, currency: { present: false }
    add_monetize :locations, :rate_by_week, currency: { present: false }
    add_monetize :locations, :rate_by_month, currency: { present: false }
  end
end
