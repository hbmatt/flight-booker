class FlightsController < ApplicationController
  def index
    @from_airports = Flight.all.map { |flight| [flight.from_airport.code, flight.from_airport.id]}.uniq
    @to_airports = Flight.all.map { |flight| [flight.to_airport.code, flight.to_airport.id]}.uniq
    @dates = Flight.all.map { |flight| [flight.departure_time.strftime("%Y / %m / %d"), flight.departure_time.strftime("%Y%m%d")]}.uniq
    @tickets = [["1", 1], ["2", 2], ["3", 3], ["4", 4]]

    if params[:departure_time]
      @flight_date = Date.parse(params[:departure_time])
      @flights = Flight.where(from_airport: params[:from_airport], to_airport: params[:to_airport], departure_time: @flight_date.all_day)
    end
  end
end
