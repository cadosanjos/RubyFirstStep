print "How many people? "
people = Integer(gets.chomp)

print "How many pizzas do you have? "
number_pizzas = Integer(gets.chomp)

print "How many slices per pizza? "
pizza_slices = Integer(gets.chomp)

total_slices = (number_pizzas * pizza_slices)
slices_per_person = total_slices / people
left_slices = total_slices % people

if number_pizzas > 1
  number_pizzas_exit = "pizzas"
else
  number_pizzas_exit = "pizza"
end
puts "#{people} people with #{number_pizzas} #{number_pizzas_exit}"

if slices_per_person > 1
  slices_per_person_exit = "slices"
else
  slices_per_person_exit = "slice"
end
puts "Each person gets #{slices_per_person} #{slices_per_person_exit} of pizza."
puts "There are #{left_slices} left over slices."

