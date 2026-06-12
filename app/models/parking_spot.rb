class ParkingSpot < ApplicationRecord
  validates :address, presence: true, uniqueness: true
  validates :longitude, presence: true, numericality: true
  validates :latitude, presence: true, numericality: true
  validates :supports_over_125cc, presence: true
  validates :source_url, presence: true, uniqueness: true
  validates :reservation_required, presence: true
end
