class CurrentVehiclePosition < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :trip # NOTE: Will be null during non-trips
  belongs_to :telematics_data, class_name: "ArchivedTelematicsData", foreign_key: "telematics_data_id"
end
