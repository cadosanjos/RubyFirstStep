def create_entries(entry)
  print "What is the #{entry} of the room in feet? "
  Float(gets.chomp)
rescue
  puts "Please entry a number"
  retry
end

length_feet = create_entries("length")
width_feet = create_entries("width")

feet_squared = length_feet * width_feet
meters_squared = feet_squared * 0.09290304

puts "You entered dimensions of #{length_feet} feet by #{width_feet} feet."
puts "The area is:"
puts "#{feet_squared} square feet"
puts "#{meters_squared} square meters"
