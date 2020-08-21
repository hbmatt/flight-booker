class PassengerMailer < ApplicationMailer
  default from: 'notifs@example.com'

  def thank_you_email
    @booking = params[:booking]
    mail(to: @booking.passenger.email, subject: "Booking Confirmation")
  end
end
