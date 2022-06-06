def get_price(item_number)
  print "Enter the price of item #{item_number}: "
  Float(gets.chomp)
rescue
  puts 'Please enter a number'
  retry
end

def get_quantity(item_number)
  print "Enter the quantity of item #{item_number}: "
  Integer(gets.chomp)
rescue
  puts 'Please enter an integer number'
  retry
end

def get_items
  print 'Enter how many items you have: '
  Integer(gets.chomp)
rescue
  puts 'Please enter an integer number'
  retry
end

number_of_items = get_items

price = 0
quantity = 0

number_of_items.times do |n|
  n += 1
  price += get_price(n)
  quantity += get_quantity(n)
end

puts "Total of items: #{quantity}"
puts "Subtotal: $$#{price}"
taxes = price * 0.055
puts "Tax: $#{taxes}"
total_price = price + taxes
puts "Total: $#{total_price}"
