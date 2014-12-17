class AddShiftIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :shift_id, :integer
  end
end
