class CreateArchivedTelematicsData < ActiveRecord::Migration
  def change
    create_table :archived_telematics_data do |t|
      t.integer :vehicle_id
      t.string :vin_number
      t.datetime :gps_date_time
      t.float :lat
      t.float :lon
      t.string :direction
      t.float :gps_speed
      t.float :soc
      t.float :dte
      t.float :odometer
      t.string :car_status
      t.boolean :hvac_status
      t.datetime :server_time

      t.timestamps
    end
  end
end
