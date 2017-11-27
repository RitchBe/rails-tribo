class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :location
  monetize :price_cents
end
