class CurrentVehiclePositionsController < ApplicationController
  before_action :set_current_vehicle_position, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @current_vehicle_positions = CurrentVehiclePosition.all
    respond_with(@current_vehicle_positions)
  end

  def show
    respond_with(@current_vehicle_position)
  end

  def new
    @current_vehicle_position = CurrentVehiclePosition.new
    respond_with(@current_vehicle_position)
  end

  def edit
  end

  def create
    @current_vehicle_position = CurrentVehiclePosition.new(current_vehicle_position_params)
    @current_vehicle_position.save
    respond_with(@current_vehicle_position)
  end

  def update
    @current_vehicle_position.update(current_vehicle_position_params)
    respond_with(@current_vehicle_position)
  end

  def destroy
    @current_vehicle_position.destroy
    respond_with(@current_vehicle_position)
  end

  private
    def set_current_vehicle_position
      @current_vehicle_position = CurrentVehiclePosition.find(params[:id])
    end

    def current_vehicle_position_params
      params.require(:current_vehicle_position).permit(:vehicle_id, :trip_id, :curr_lat, :curr_lon, :curr_timestamp, :prev_lat, :prev_lon, :heading, :speed, :altitude, :accuracy, :soc, :dte, :odometer_reading, :distance_from_previous, :distance_covered)
    end
end
