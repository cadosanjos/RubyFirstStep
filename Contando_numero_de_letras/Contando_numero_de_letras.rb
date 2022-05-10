print "What's the input string?"
written_string = gets.chomp

numbers_of_characs = written_string.length
if numbers_of_characs == 0
  puts "Please, entry a word to run the programm"
else
  puts "#{written_string} has #{numbers_of_characs} characters."
end
