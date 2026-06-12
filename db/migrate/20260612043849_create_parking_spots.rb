class CreateParkingSpots < ActiveRecord::Migration[8.1]
  def change
    create_table :parking_spots do |t|
      # location
      t.string :name
      t.string :address
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6

      # parking spot information
      t.string :parking_type
      t.string :reservation_required
      t.string :accepts_card
      t.string :price_text
      t.text :raw_source_text

      # bike specifications
      t.string :supports_over_125cc
      t.integer :max_bike_length_cm
      t.integer :max_bike_width_cm

      # contact information
      t.string :phone_number
      t.string :operator_name
      t.string :operator_url
      t.string :source_url
      t.string :source_name

      # time updated
      t.datetime :last_scraped_at
      t.datetime :last_verified_at

      # other
      t.text :notes
      t.timestamps
    end
  end
end
