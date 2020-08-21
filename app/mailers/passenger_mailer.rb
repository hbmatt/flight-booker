class PassengerMailer < ApplicationMailer
  default from: 'notifs@example.com'

  def thank_you_email
    @booking = params[:booking]
    @passenger = params[:passenger]
    mail(to: @passenger.email, subject: "Booking Confirmation")  
  end
end
