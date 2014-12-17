class ModifyTimeOfDepartureAndArrivalInTrips < ActiveRecord::Migration
  def up
    remove_column :trips, :estimated_time_of_departure
    remove_column :trips, :estimated_time_of_arrival
    add_column :trips, :estimated_start_time, :timestamp
    add_column :trips, :estimated_end_time, :timestamp
  end

  def down
    remove_column :trips, :estimated_start_time
    remove_column :trips, :estimated_end_time
    add_column :trips, :estimated_time_of_departure, :datetime
    add_column :trips, :estimated_time_of_arrival, :datetime
  end
end
