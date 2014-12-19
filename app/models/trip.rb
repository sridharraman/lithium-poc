class Trip < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :shift
  has_many :trip_summaries
  has_one :current_vehicle_position
  has_many :archived_vehicle_positions

  def self.by_vehicle_and_date(vehicle_id, trip_date)
    # raise
    # ---
    where(vehicle_id: vehicle_id)
  end

  def estimated_soc_difference
    estimated_start_soc - estimated_end_soc
  end

  def estimated_travel_duration
    estimated_end_time - estimated_start_time
  end
end
