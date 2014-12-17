class Vehicle < ActiveRecord::Base
  has_many :trips
  has_one :current_vehicle_position
  has_many :archived_vehicle_positions

  has_one :current_telematics_datum
  has_many :archived_telematics_data
end
