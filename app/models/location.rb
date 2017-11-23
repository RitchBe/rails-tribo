class Location < ApplicationRecord
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

  FEATURES = ["Wifi", "Printer", "Headlights"]

  has_attachments :photos, maximum: 3
end

