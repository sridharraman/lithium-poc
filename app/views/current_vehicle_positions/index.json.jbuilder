json.array!(@current_vehicle_positions) do |current_vehicle_position|
  json.extract! current_vehicle_position, :id, :vehicle_id, :trip_id, :curr_lat, :curr_lon, :curr_timestamp, :prev_lat, :prev_lon, :heading, :speed, :altitude, :accuracy, :soc, :dte, :odometer_reading, :distance_from_previous, :distance_covered
  json.url current_vehicle_position_url(current_vehicle_position, format: :json)
end
