class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    @booking.flight_id = params[:flight_id].to_i
    params[:num_tickets].to_i.times { @booking.passengers.build }
  end

  def create
    @flight = Flight.find(booking_params[:flight_id])
    @booking = Booking.new(booking_params)

    if @booking.save
      @passengers = @booking.passengers.all
      @passengers.each do |passenger|
        PassengerMailer.with(passenger: passenger, booking: @booking).thank_you_email.deliver_later
      end
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @passengers = @booking.passengers.all
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id, :passenger_id, passengers_attributes: [:name, :email, :flight_id])
    end
end
