class AddShiftTypeToShifts < ActiveRecord::Migration
  def change
    add_column :shifts, :shift_type, :string
  end
end
