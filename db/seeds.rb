puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dakko = {name: "Dakko", address: "22 rue de bouffets, Nantes", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "10 rue de Rome, Rome", category: "italian"}
xiameng = {name: "Xiameng", address: "22 rue de waolang, xiameng", category: "chinese"}
baguette =  {name: "Baguette", address: "10 rue de paris, Paris", category:  "french"}
frite =  {name: "Frite", address: "10 rue de bruxelle, Bruxelle", category:  "belgian"}

[dakko, pizza_east, xiameng, baguette, frite].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
