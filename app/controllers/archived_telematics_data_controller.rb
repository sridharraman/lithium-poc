class ArchivedTelematicsDataController < ApplicationController
  before_action :set_archived_telematics_datum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @archived_telematics_data = ArchivedTelematicsDatum.all
    respond_with(@archived_telematics_data)
  end

  def show
    respond_with(@archived_telematics_datum)
  end

  def new
    @archived_telematics_datum = ArchivedTelematicsDatum.new
    respond_with(@archived_telematics_datum)
  end

  def edit
  end

  def create
    @archived_telematics_datum = ArchivedTelematicsDatum.new(archived_telematics_datum_params)
    @archived_telematics_datum.save
    respond_with(@archived_telematics_datum)
  end

  def update
    @archived_telematics_datum.update(archived_telematics_datum_params)
    respond_with(@archived_telematics_datum)
  end

  def destroy
    @archived_telematics_datum.destroy
    respond_with(@archived_telematics_datum)
  end

  private
    def set_archived_telematics_datum
      @archived_telematics_datum = ArchivedTelematicsDatum.find(params[:id])
    end

    def archived_telematics_datum_params
      params.require(:archived_telematics_datum).permit(:vehicle_id, :vin_number, :gps_date_time, :lat, :lon, :direction, :gps_speed, :soc, :dte, :odometer, :car_status, :hvac_status, :server_time)
    end
end
