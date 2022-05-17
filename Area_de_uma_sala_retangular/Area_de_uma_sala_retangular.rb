def create_entries(entrie)

  begin
    print "What is the #{entrie} of the room in feet? "
    number = Float(gets.chomp)
  rescue
    puts "Please enter a number"
    retry
  end
end

lenght_feet = create_entries("lenght")
width_feet = create_entries("width")

feet_squared = lenght_feet * width_feet
meters_squared = feet_squared * 0.09290304

puts "You entered dimensions of #{lenght_feet} feet by #{width_feet} feet."
puts "The area is:"
puts "#{feet_squared} square feet"
puts "#{meters_squared} square meters"
