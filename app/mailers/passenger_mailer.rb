class PassengerMailer < ApplicationMailer
  default from: 'notifs@example.com'

  def thank_you_email
    @booking = params[:booking]
    @passengers = @booking.passengers.all
    @passengers.each do |passenger|
      @passenger = passenger
      mail(to: @passenger.email, subject: "Booking Confirmation")
    end    
  end
end
