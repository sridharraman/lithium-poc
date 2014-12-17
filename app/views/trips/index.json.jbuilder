json.array!(@trips) do |trip|
  json.extract! trip, :id, :vehicle_id, :trip_date, :origin, :destination, :estimated_distance, :estimated_time_of_departure, :estimated_time_of_arrival, :estimated_start_soc, :estimated_end_soc, :hvac_status
  json.url trip_url(trip, format: :json)
end
