class RemovePriceFromMonetize < ActiveRecord::Migration[5.1]
  def change
    remove_column :locations, :rate_by_hour_cents
    remove_column :locations, :rate_by_day_cents
    remove_column :locations, :rate_by_week_cents
    remove_column :locations, :rate_by_month_cents
    remove_column :bookings, :price_cents
  end
end
