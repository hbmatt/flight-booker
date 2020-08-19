class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: 'Airport'
  belongs_to :to_airport, class_name: 'Airport'

  def departure_formatted
    "Departure Time: #{departure_time.strftime("%H:%M")}, Duration: #{duration}"
  end
end
