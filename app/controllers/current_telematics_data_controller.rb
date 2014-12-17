class CurrentTelematicsDataController < ApplicationController
  before_action :set_current_telematics_datum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @current_telematics_data = CurrentTelematicsDatum.all
    respond_with(@current_telematics_data)
  end

  def show
    respond_with(@current_telematics_datum)
  end

  def new
    @current_telematics_datum = CurrentTelematicsDatum.new
    respond_with(@current_telematics_datum)
  end

  def edit
  end

  def create
    @current_telematics_datum = CurrentTelematicsDatum.new(current_telematics_datum_params)
    @current_telematics_datum.save
    respond_with(@current_telematics_datum)
  end

  def update
    @current_telematics_datum.update(current_telematics_datum_params)
    respond_with(@current_telematics_datum)
  end

  def destroy
    @current_telematics_datum.destroy
    respond_with(@current_telematics_datum)
  end

  private
    def set_current_telematics_datum
      @current_telematics_datum = CurrentTelematicsDatum.find(params[:id])
    end

    def current_telematics_datum_params
      params.require(:current_telematics_datum).permit(:vehicle_id, :vin_number, :gps_date_time, :lat, :lon, :direction, :gps_speed, :soc, :dte, :odometer, :car_status, :hvac_status, :server_time)
    end
end
