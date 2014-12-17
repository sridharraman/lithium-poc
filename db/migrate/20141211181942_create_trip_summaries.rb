class CreateTripSummaries < ActiveRecord::Migration
  def change
    create_table :trip_summaries do |t|
      t.integer :trip_id
      t.float :distance
      t.timestamp :time_of_departure
      t.timestamp :time_of_arrival
      t.float :start_soc
      t.float :end_soc
      t.float :average_speed

      t.timestamps
    end
  end
end
