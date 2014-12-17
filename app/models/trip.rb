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
end
