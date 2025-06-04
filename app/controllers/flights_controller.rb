class FlightsController < ApplicationController
  def index
    if search_params_present?
      @flights = Flight.includes(:departure_airport, :arrival_airport)
      @flights = @flights.where(departure_airport_id: params[:departure_airport_id]) if params[:departure_airport_id].present?
      @flights = @flights.where(arrival_airport_id: params[:arrival_airport_id]) if params[:arrival_airport_id].present?
      @flights = @flights.by_date(Date.parse(params[:date])) if params[:date].present?
      @passenger_count = params[:passenger_count].present? ? params[:passenger_count].to_i : 1
    end
  end

  private

  def search_params_present?
    params[:departure_airport_id].present? ||
      params[:arrival_airport_id].present? ||
      params[:date].present? ||
      params[:passenger_count].present?
  end
end
