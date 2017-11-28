class AddMonetizeToLocations < ActiveRecord::Migration[5.1]
  def change
    add_monetize :location, :rate_by_hour, currency: { present: false }
    add_monetize :location, :rate_by_day, currency: { present: false }
    add_monetize :location, :rate_by_week, currency: { present: false }
    add_monetize :location, :rate_by_month, currency: { present: false }
  end
end
