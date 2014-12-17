class Shift < ActiveRecord::Base
  belongs_to :vehicle
  has_many :trips

  def self.by_vehicle_and_date(vehicle_id, trip_date)
    where(vehicle_id: vehicle_id) # NOTE: trip_date not considered as it is for ALL DAYS
  end
end
