class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.build
    params[:passenger_count].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to :root, notice: "Booking was successfully created!"
    else
      render :new, status: :unprocessable_entity, alert: "Unable to create booking..."
    end
  end

  private

  def booking_params
    params.expect(booking: [ :flight_id, passengers_attributes: [ [ :name, :email ] ] ])
  end
end
