print "What's the input string? "
written_string = gets.chomp

if written_string.empty?
  puts 'Please, entry a word to run the programm'
else
  puts "#{written_string} has #{written_string.length} characters."
end
