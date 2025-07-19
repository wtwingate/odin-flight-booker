class PassengerMailer < ApplicationMailer
  default from: "notifications@example.com"

  def booking_confirmation
    @booking = params[:booking]
    @passenger = params[:passenger]

    mail(to: @passenger.email, subject: "Flight Booking Confirmation")
  end
end
