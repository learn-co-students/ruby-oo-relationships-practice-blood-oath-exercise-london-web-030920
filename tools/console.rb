require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult_1 = Cult.new("name 1", "place_1", 1997, "slogan 1")
cult_2 = Cult.new("name 2", "place_2", 1992, "slogan 2")

follower_1 = Follower.new("name_1", 30, "motto 1")
follower_2 = Follower.new("name_2", 20, "motto 2")

blood_oath_1 = BloodOath.new("_2020-03-17_", cult_1, follower_1)
blood_oath_2 = BloodOath.new("_2020-03-17_", cult_1, follower_2)
blood_oath_3 = BloodOath.new("_2020-03-17_", cult_2, follower_2)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
