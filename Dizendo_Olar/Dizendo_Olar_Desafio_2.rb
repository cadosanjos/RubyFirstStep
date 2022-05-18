print "What's your name? "
name = gets.chomp.downcase

last_index = name.length-1
last_char = name[last_index]

case last_char 
when 'o'
  puts "Hello, Mr. #{name.capitalize}, nice to meet you!"
when 'a'
  puts "Hello, Miss. #{name.capitalize}, nice to meet you!"
else
  puts "Hello, #{name.capitalize}, nice to meet you!"
end
