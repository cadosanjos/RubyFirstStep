def get_numbers
  print "What's the number? "
  number = Integer(gets.chomp)
rescue
  puts 'Please enter an integer number'
  retry
end

def sum(one, two)
  sum = one + two
end

def difference(one, two)
  difference = one - two
end

def product(one, two)
  product = one * two
end

def quotient(one, two)
  if two.zero?
    quotient = "It's not possible to made a zero division"
  else
    quotient = one / two
  end
end

number_one = get_numbers
number_two = get_numbers

puts "#{number_one} + #{number_two} = #{sum(number_one, number_two)}\n#{number_one} - #{number_two} = #{difference_result = difference(number_one, number_two)}\n#{number_one} * #{number_two} = #{product_result = product(number_one, number_two)}\n#{number_one} / #{number_two} = #{quotient_result = quotient(number_one, number_two)}"
