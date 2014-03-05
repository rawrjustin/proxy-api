# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cabo = Destination.create(name: "Cabo San Lucas")

Attraction.create([
  { destination: cabo,
    name: "Scuba Diving", 
    description: "Abundant sea life, amazing rock formations, and spectacular coral reefs await your discovery in the waters just off Cabo. Scuba diving in Cabo San Lucas offers divers of all levels a unique and wondrous diving experience. You don't want to miss scuba diving in a place famed ocean explorer, Jacque Cousteau, called the 'worlds aquarium.'" },
  { destination: cabo,
    name: "Swimming with Dolphins", 
    description: "Swim with dolphins in Los Cabos; it is a life changing experience..." },
  { destination: cabo,
    name: "Snorkeling", 
    description: "Explore Cabo's underwater world as you swim, power-snorkel, kayak & stand up paddle", },
  { destination: cabo,
    name: "Whale Watching", 
    description: "From December 15th through April 15th, the waters of Cabo San Lucas fill with magnificent humpback whales; creating perfect whale watching conditions" },
  { destination: cabo,
    name: "Sailing", 
    description: "Let the tropical winds carry you over the turquoise waters to the secluded natural beaches of the Sea of Cortés and beyond." }
])


