module Api
  module V1
    class TripsController < ApplicationController

      respond_to :json

      def show
        vehicle_id = params[:vehicle_id]
        trip_date = Date.today

        begin
          @trips = Trip.by_vehicle_and_date(vehicle_id, trip_date)
        rescue
          errors = "Error"
          render json: errors.to_json, status: 400
          return
        end

        respond_with(@trips)

        # render json: @trips, status: :ok
      end
    end
  end
end
