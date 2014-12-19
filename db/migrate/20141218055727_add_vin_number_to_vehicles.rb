class AddVinNumberToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :vin_number, :string
  end
end
