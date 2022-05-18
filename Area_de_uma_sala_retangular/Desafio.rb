def create_entries(entry, unit)
  print "What is the #{entry} of the room in #{unit}? "
  Float(gets.chomp)
rescue
  puts 'Please enter an integer number'
  retry
end

def validate_unit
  print "Room area calculate \nWhat is the unit you want to work with? Feets or Meters? "
  unit = gets.chomp.downcase
  if unit != 'feets' && unit != 'meters'
    puts 'Invalid Unit'
    exit
  end
  return unit
end

unit = validate_unit
length = create_entries('length', unit)
width = create_entries('width', unit)

if unit == 'feets'
  squared = length * width
  print squared
  converted_squared = squared * 0.09290304
  print converted_squared
  converted_squared_unit = 'meters'
else
  squared = length * width
  converted_squared = squared / 0.09290304
  converted_squared_unit = 'feet'
end

puts "You entered dimensions of #{length} feet by #{width} #{unit}."
puts 'The area is:'
puts "#{squared} square #{unit}"
puts "#{converted_squared} square #{converted_squared_unit}"
