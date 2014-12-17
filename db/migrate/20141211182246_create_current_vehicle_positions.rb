class CreateCurrentVehiclePositions < ActiveRecord::Migration
  def change
    create_table :current_vehicle_positions do |t|
      t.integer :vehicle_id
      t.integer :trip_id
      t.float :curr_lat
      t.float :curr_lon
      t.datetime :curr_timestamp
      t.float :prev_lat
      t.float :prev_lon
      t.float :heading
      t.float :speed
      t.float :altitude
      t.float :accuracy
      t.float :soc
      t.float :dte
      t.float :odometer_reading
      t.float :distance_from_previous
      t.float :distance_covered

      t.point :the_curr_geom, :srid => 32643, :with_z => false
      t.point :the_prev_geom, :srid => 32643, :with_z => false

      t.timestamps
    end
  end
end
