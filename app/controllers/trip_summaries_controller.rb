class TripSummariesController < ApplicationController
  before_action :set_trip_summary, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @trip_summaries = TripSummary.all
    respond_with(@trip_summaries)
  end

  def show
    respond_with(@trip_summary)
  end

  def new
    @trip_summary = TripSummary.new
    respond_with(@trip_summary)
  end

  def edit
  end

  def create
    @trip_summary = TripSummary.new(trip_summary_params)
    @trip_summary.save
    respond_with(@trip_summary)
  end

  def update
    @trip_summary.update(trip_summary_params)
    respond_with(@trip_summary)
  end

  def destroy
    @trip_summary.destroy
    respond_with(@trip_summary)
  end

  private
    def set_trip_summary
      @trip_summary = TripSummary.find(params[:id])
    end

    def trip_summary_params
      params.require(:trip_summary).permit(:trip_id, :distance, :time_of_departure, :time_of_arrival, :start_soc, :end_soc, :average_speed)
    end
end
