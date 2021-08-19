# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Taxi.destroy_all
Passenger.destroy_all
Ride.destroy_all

puts "Seeding taxis  ...."
10.times do
    Taxi.create(vin_number: rand(1234..5436))
end

puts "Seeding passengers..."
names = %w[matt george pete alan veronica sarah jane susan isabella john travis jack]
15.times do 
    Passenger.create(name: names.sample)
end

puts "Seeding rides..."

20.times do 
    Ride.create(taxi_id: rand(1..10), passenger_id: rand(1..15))
end

puts "Done..."