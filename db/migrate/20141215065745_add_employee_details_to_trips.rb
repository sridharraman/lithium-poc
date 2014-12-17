class AddEmployeeDetailsToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :employee_id, :string
    add_column :trips, :address, :string
    add_column :trips, :phone_number, :string
    add_column :trips, :route_id, :string
  end
end
