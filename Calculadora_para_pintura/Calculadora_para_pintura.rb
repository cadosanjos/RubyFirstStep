def room_format
  print 'What is the room format? Circular, square or L shape? '
  room_format_enter = gets.chomp.downcase
  unless %w[circular square l].include? room_format_enter
    puts 'Please enter Circular, square or L'
    exit
  end
  room_format_enter
end

def square_room_information(enter)
  print "What is the #{enter} of the room? "
  Float(gets.chomp)
rescue
  puts 'Please enter a number'
  retry
end

def circular_room_information()
  print 'What is the radius of the room?'
  Float(gets.chomp)
rescue
  puts 'Please enter a number'
  retry
end

room_format_enter = room_format

case room_format_enter
when 'square'
  length = square_room_information('length')
  width = square_room_information('width')
  square_meters = length * width
  cans_quantities = square_meters / 32
when 'circular'
  radius_room = circular_room_information
  square_meters = Math::PI * (radius_room ** 2 )
  cans_quantities = square_meters / 32
when 'l'
  puts 'Enter the information on one side of L room'
  length_one = square_room_information('length')
  width_one = square_room_information('width')
  puts 'Enter the information on the other side of L room'
  length_two = square_room_information('length')
  width_two = square_room_information('width')
  square_meters = (length_one * width_one) + (length_two * width_two)
  cans_quantities = square_meters / 32
end

puts "You will need to purchase #{cans_quantities.ceil} cans of paint to cover #{square_meters}m²"
