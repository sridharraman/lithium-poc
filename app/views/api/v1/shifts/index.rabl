collection :@shifts
attributes :id, :shift_type
child(trips: :trips) do
  attributes :id, :origin, :destination, :estimated_distance, :estimated_start_soc, :estimated_end_soc,
    :hvac_status, :employee_id, :address, :phone_number, :estimated_start_time, :estimated_end_time
end
