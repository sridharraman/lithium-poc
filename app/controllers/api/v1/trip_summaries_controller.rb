module Api
  module V1
    class TripSummariesController < ApplicationController
      skip_before_filter :verify_authenticity_token

      respond_to :json

      # SAMPLE calls
      # http://localhost:3000/api/v1/trip_summaries?summary[trip_id]=1&summary[distance]=25&summary[time_of_departure]=9:00&summary[time_of_arrival]=10:30&summary[start_soc]=85&summary[end_soc]=60&summary[average_speed]=12 =>
      # Create trip-summary
      # POST
      def create
        Rails.logger.debug "API DEBUG: trip_summaries#create: #{params}"

        trip_summary = TripSummary.new(params.require(:summary).permit(:trip_id, :distance, :time_of_departure,
          :time_of_arrival, :start_soc, :end_soc, :average_speed))

        begin
          if trip_summary.save
            render json: trip_summary.delta, status: :ok
          else
            errors = trip_summary.errors
            render json: errors.to_json, status: 400
          end
        rescue
          errors = "Exception"
          render json: errors.to_json, status: 400
        end

      end
    end
  end
end
