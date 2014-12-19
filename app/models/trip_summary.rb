class TripSummary < ActiveRecord::Base
  belongs_to :trip

  def delta
    {
      trip_id: trip_id,
      trip_summary_id: id,
      deviation_in_soc: trip.estimated_soc_difference - actual_soc_difference,
      deviation_in_distance: trip.estimated_distance - distance,
      deviation_in_travel_duration: trip.estimated_travel_duration - actual_travel_duration
    }
  end

  def actual_soc_difference
    start_soc - end_soc
  end

  def actual_travel_duration
    time_of_departure - time_of_arrival
  end
end
