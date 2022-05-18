print "What's the quote? "
quote = gets.chomp

print 'Who said it? '
author = gets.chomp

if quote.empty? or author.empty?
  puts 'Please, entry a quote and a author to run the programm'
else
  puts author + ' says, "' + quote + '"'
end
