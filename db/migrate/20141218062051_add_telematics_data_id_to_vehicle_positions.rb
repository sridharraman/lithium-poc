class AddTelematicsDataIdToVehiclePositions < ActiveRecord::Migration
  def change
    add_column :current_vehicle_positions, :telematics_data_id, :integer
    add_column :archived_vehicle_positions, :telematics_data_id, :integer
  end
end
