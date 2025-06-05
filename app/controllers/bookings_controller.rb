class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new(flight_id: params[:flight_id])
    params[:passenger_count].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: "Booking was successfully created!"
    else
      render :new, status: :unprocessable_entity, alert: "Unable to create booking..."
    end
  end

  private

  def booking_params
    params.expect(booking: [ :flight_id, passengers_attributes: [ [ :name, :email ] ] ])
  end
end
