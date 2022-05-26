print 'How many people? '
people = Integer(gets.chomp)

print 'How many slices each person usually eat? '
slices_person = Integer(gets.chomp)

print 'How many slices per pizza? '
slices_pizza = Integer(gets.chomp)

total_slices = (people * slices_person)
total_pizza = total_slices / slices_pizza
left_slices = total_slices % slices_pizza

order_pizza = left_slices.zero? ? total_pizza : total_pizza + 1
order_pizza_exit = order_pizza > 1 ? 'pizzas' : 'pizza'

puts "You need to order #{order_pizza} #{order_pizza_exit}"
