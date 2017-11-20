class Location < ApplicationRecord
  belongs_to :user_id

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :phone, presence:true
  validates :description, length: { maximum: 500 }
  validates :rules, length: { maximum: 400 }

end

