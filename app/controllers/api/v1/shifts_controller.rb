module Api
  module V1
    class ShiftsController < ApplicationController

      respond_to :json

      # SAMPLE calls
      # http://localhost:3000/api/v1/shifts/index?vehicle_id=1 =>
      # http://localhost:3000/api/v1/shifts/index?vehicle_id=4 =>
      def index
        vehicle_id = params[:vehicle_id]
        shift_date = Date.today

        begin
          @shifts = Shift.by_vehicle_and_date(vehicle_id, shift_date)
        rescue
          errors = "Error"
          render json: errors.to_json, status: 400
          return
        end

        respond_with(@shifts)

        # render json: trips, status: :ok
      end
    end
  end
end
