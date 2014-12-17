class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.integer :vehicle_id
      t.boolean :days_of_the_week, array: true, length: 7, default: '{true, true, true, true, true, true, true}'

      t.timestamps
    end
  end
end
