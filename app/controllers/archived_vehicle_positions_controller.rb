class ArchivedVehiclePositionsController < ApplicationController
  before_action :set_archived_vehicle_position, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @archived_vehicle_positions = ArchivedVehiclePosition.all
    respond_with(@archived_vehicle_positions)
  end

  def show
    respond_with(@archived_vehicle_position)
  end

  def new
    @archived_vehicle_position = ArchivedVehiclePosition.new
    respond_with(@archived_vehicle_position)
  end

  def edit
  end

  def create
    @archived_vehicle_position = ArchivedVehiclePosition.new(archived_vehicle_position_params)
    @archived_vehicle_position.save
    respond_with(@archived_vehicle_position)
  end

  def update
    @archived_vehicle_position.update(archived_vehicle_position_params)
    respond_with(@archived_vehicle_position)
  end

  def destroy
    @archived_vehicle_position.destroy
    respond_with(@archived_vehicle_position)
  end

  private
    def set_archived_vehicle_position
      @archived_vehicle_position = ArchivedVehiclePosition.find(params[:id])
    end

    def archived_vehicle_position_params
      params.require(:archived_vehicle_position).permit(:vehicle_id, :trip_id, :curr_lat, :curr_lon, :curr_timestamp, :prev_lat, :prev_lon, :heading, :speed, :altitude, :accuracy, :soc, :dte, :odometer_reading, :distance_from_previous, :distance_covered)
    end
end
