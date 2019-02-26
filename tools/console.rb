require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

client1 = Client.new("Timmy")
client2 = Client.new("Mimmy")
client3 = Client.new("Jimmy")

trainer1 = Trainer.new("Cliff")
trainer2 = Trainer.new("Biff")
trainer3 = Trainer.new("Diff")

location1 = Location.new("DC")
location2 = Location.new("NYC")
location3 = Location.new("LA")

ltrain1 = LocationTrainer.new(trainer1, location1)
ltrain2 = LocationTrainer.new(trainer1, location2)
ltrain3 = LocationTrainer.new(trainer1, location3)
ltrain4 = LocationTrainer.new(trainer2, location1)
ltrain5 = LocationTrainer.new(trainer2, location2)
ltrain6 = LocationTrainer.new(trainer3, location1)

puts "Client"
puts "client inits with name:"
puts client1.name == "Timmy"
puts "client#assign_trainer adds trainer"
puts client2 == Client.assign_trainer(trainer1)
puts client2.trainer == trainer2
puts "all returns all clients"
puts Client.all = [client1, client2, client3]
puts "client has locations trhough trainers"
puts client2.locations == [location1, location2]

puts ""
puts "Location"
puts "has name:"
puts location1.name = "DC"
puts "least_clients returns gym with few clients:"
puts client1.assign_trainer(trainer1)
puts Location.least_clients == location2
puts "outputs all locations"
puts Location.all = [location1, location2, location3]

puts ""
puts "Trainer:"
puts "all returns all:"
puts Trainer.all == [trainer1, trainer2, trainer3]
puts "has many clients"
client3.assign_trainer(trainer1)
puts trainer1.clients == [client2, client3]
puts "returns most clients"
puts Trainer.most_clients == trainer1
puts "has multiple locations"
puts trainer2.locations == [location1, location2]






binding.pry
0
