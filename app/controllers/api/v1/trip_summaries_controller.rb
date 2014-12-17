module Api
  module V1
    class TripSummariesController < ApplicationController
      def create
        trip_summary = TripSummary.new(params[:trip_summary])

        if trip_summary.save

        else

        end
      end
    end
  end
end
