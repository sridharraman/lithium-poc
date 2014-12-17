json.array!(@shifts) do |shift|
  json.extract! shift, :id, :vehicle_id, :days_of_the_week
  json.url shift_url(shift, format: :json)
end
