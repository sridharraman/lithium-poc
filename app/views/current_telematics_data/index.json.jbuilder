json.array!(@current_telematics_data) do |current_telematics_datum|
  json.extract! current_telematics_datum, :id, :vehicle_id, :vin_number, :gps_date_time, :lat, :lon, :direction, :gps_speed, :soc, :dte, :odometer, :car_status, :hvac_status, :server_time
  json.url current_telematics_datum_url(current_telematics_datum, format: :json)
end
