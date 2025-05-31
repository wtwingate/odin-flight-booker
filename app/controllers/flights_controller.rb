class FlightsController < ApplicationController
  def index
    @flights = Flight.order(departure_time: :asc)
    @flights = @flights.where(departure_airport_id: params[:departure_airport_id]) if params[:departure_airport_id].present?
    @flights = @flights.where(arrival_airport_id: params[:arrival_airport_id]) if params[:arrival_airport_id].present?
    @flights = @flights.on_date(Date.parse(params[:date])) if params[:date].present?
  end

  def show
    @flight = Flight.find(params[:id])
  end
end
