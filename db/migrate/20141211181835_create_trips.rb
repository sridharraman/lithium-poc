class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :vehicle_id
      t.date :trip_date
      t.string :origin
      t.string :destination
      t.float :estimated_distance
      t.timestamp :estimated_time_of_departure
      t.timestamp :estimated_time_of_arrival
      t.float :estimated_start_soc
      t.float :estimated_end_soc
      t.boolean :hvac_status

      t.timestamps
    end
  end
end
