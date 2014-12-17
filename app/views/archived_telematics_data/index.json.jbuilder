json.array!(@archived_telematics_data) do |archived_telematics_datum|
  json.extract! archived_telematics_datum, :id, :vehicle_id, :vin_number, :gps_date_time, :lat, :lon, :direction, :gps_speed, :soc, :dte, :odometer, :car_status, :hvac_status, :server_time
  json.url archived_telematics_datum_url(archived_telematics_datum, format: :json)
end
