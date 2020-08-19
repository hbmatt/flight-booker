class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: 'Airport'
  belongs_to :to_airport, class_name: 'Airport'
  has_many :bookings
  has_many :passengers

  def departure_formatted
    "Departure Time: #{departure_time.strftime("%H:%M")}, Duration: #{duration}"
  end
end
