class ParkingSpot < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true

  validates :latitude, presence: true, numericality: true
  validates :longitude, presence: true, numericality: true

  validates :parking_type, presence: true
  validates :supports_over_125cc, presence: true
  validates :reservation_required, presence: true

  validates :source_url, presence: true, uniqueness: true
end
