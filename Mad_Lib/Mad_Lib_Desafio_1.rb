print 'Tell me a pet: '
pet = gets.chomp

print 'Do you have a pet? '
have_pet = gets.chomp

print 'Tell me a verb: '
verb = gets.chomp

print 'Tell me a color: '
color = gets.chomp

print 'Tell me an adverb: '
adverb = gets.chomp

if have_pet
  puts "This weekend I am going camping with my #{color} #{pet}. I am so #{adverb} to #{verb} in a tent. That's fun!"
else
  puts "This weekend I am going camping with my uncle's #{color} #{pet}. I am so #{adverb} to #{verb} in a tent. That's fun!"
end
