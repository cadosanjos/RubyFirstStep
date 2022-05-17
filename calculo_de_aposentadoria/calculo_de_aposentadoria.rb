print "What's your current age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire = gets.chomp.to_i

left_years = retire - age
current_year = Time.new.year
retire_year = current_year + left_years

if left_years.positive?
  puts "You have #{left_years} years left until you can retire."
  puts "It is #{current_year}, so you can retire in #{retire_year}."
else
  puts "You can retire!"
end
