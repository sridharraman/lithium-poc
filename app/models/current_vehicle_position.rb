class CurrentVehiclePosition < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :trip # NOTE: Will be null during non-trips
end
