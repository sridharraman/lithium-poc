json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :name, :registration_number
  json.url vehicle_url(vehicle, format: :json)
end
