# Generated with RailsBricks
# Initial seed file to use with Devise User Model

# Temporary admin account
# u = User.new(
#     email: "admin@example.com",
#     password: "1234",
#     password_confirmation: "1234",
#     admin: true
# )
# u.skip_confirmation!
# u.save!

require 'csv'
SEED_DIR = "db/seeds/"

# Vehicles
# CSV.foreach(SEED_DIR + 'vehicles.csv', :headers => true) do |row| Vehicle.create!(row.to_hash) end

# Shifts
CSV.foreach(SEED_DIR + 'shifts.csv', :headers => true) do |row| Shift.create!(row.to_hash) end

# Trips
CSV.foreach(SEED_DIR + 'trips.csv', :headers => true) do |row| Trip.create!(row.to_hash) end
