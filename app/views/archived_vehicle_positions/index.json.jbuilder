json.array!(@archived_vehicle_positions) do |archived_vehicle_position|
  json.extract! archived_vehicle_position, :id, :vehicle_id, :trip_id, :curr_lat, :curr_lon, :curr_timestamp, :prev_lat, :prev_lon, :heading, :speed, :altitude, :accuracy, :soc, :dte, :odometer_reading, :distance_from_previous, :distance_covered
  json.url archived_vehicle_position_url(archived_vehicle_position, format: :json)
end
