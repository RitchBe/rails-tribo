class Location < ApplicationRecord
	

	include PgSearch
	pg_search_scope :search_by_name_and_address, against: [ :name, :address ]


	belongs_to :user
	has_many :bookings
	has_many :messages
	validates :name, presence: true
  # validates :email, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :phone, presence:true
  validates :description, length: { maximum: 500 }
  validates :rules, length: { maximum: 400 }
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  monetize :rate_by_hour_cents
  monetize :rate_by_day_cents
  monetize :rate_by_week_cents
  monetize :rate_by_month_cents

  FEATURES = ["Wifi", "Printer", "Headlights"]

  has_attachments :photos, maximum: 3

  acts_as_favoritable

end

