class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @flights = @flights.where(departure_airport_id: params[:departure_airport_id]) if params[:departure_airport_id].present?
    @flights = @flights.where(arrival_airport_id: params[:arrival_airport_id]) if params[:arrival_airport_id].present?
    @flights = @flights.by_date(Date.parse(params[:date])) if params[:date].present?
    @passenger_count = params[:passenger_count].present? ? params[:passenger_count].to_i : 1
  end
end
