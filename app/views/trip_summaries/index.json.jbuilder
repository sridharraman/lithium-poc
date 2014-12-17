json.array!(@trip_summaries) do |trip_summary|
  json.extract! trip_summary, :id, :trip_id, :distance, :time_of_departure, :time_of_arrival, :start_soc, :end_soc, :average_speed
  json.url trip_summary_url(trip_summary, format: :json)
end
