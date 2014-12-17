class ModifyDateRelatedFieldsInTrips < ActiveRecord::Migration
  def up
    remove_column :trips, :trip_date
    add_column :trips, :days_of_the_week, :boolean, array: true,
      length: 7, default: '{true, true, true, true, true, true, true}'
  end

  def down
    add_column :trips, :trip_date, :date
    remove_column :trips, :days_of_the_week
  end
end
