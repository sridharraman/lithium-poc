class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @trips = Trip.all
    respond_with(@trips)
  end

  def show
    respond_with(@trip)
  end

  def new
    @trip = Trip.new
    respond_with(@trip)
  end

  def edit
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.save
    respond_with(@trip)
  end

  def update
    @trip.update(trip_params)
    respond_with(@trip)
  end

  def destroy
    @trip.destroy
    respond_with(@trip)
  end

  private
    def set_trip
      @trip = Trip.find(params[:id])
    end

    def trip_params
      params.require(:trip).permit(:vehicle_id, :trip_date, :origin, :destination, :estimated_distance, :estimated_time_of_departure, :estimated_time_of_arrival, :estimated_start_soc, :estimated_end_soc, :hvac_status)
    end
end
