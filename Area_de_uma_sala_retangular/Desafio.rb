

def create_entries(entrie, unit)

  begin
    print "What is the #{entrie} of the room in #{unit}? "
    number = Float(gets.chomp)
    return number
  rescue
    puts "Please enter an integer number"
    retry
  end
end

def validate_unit
  print "Room area calculate \nWhat is the unit you want to work with? Feets or Meters? "
  unit = gets.chomp.downcase
  if unit != "feets" and unit != "meters"
    puts "Invalid Unit"
    exit
  end
  return unit
end

unit = validate_unit()
lenght = create_entries("lenght", unit)
width = create_entries("width", unit)

if unit == "feets"
  squared = lenght * width
  print squared
  converted_squared = squared * 0.09290304
  print converted_squared
  converted_squared_unit = "meters"
else
  squared = lenght * width
  converted_squared = squared / 0.09290304
  converted_squared_unit = "feet"
end

puts "You entered dimensions of #{lenght} feet by #{width} #{unit}."
puts "The area is:"
puts "#{squared} square #{unit}"
puts "#{converted_squared} square #{converted_squared_unit}"
