print "What's your name?"
name = gets.chomp

last_index = name.length-1
last_char = name[last_index]

if last_char == 'o'
  puts "Hello, Mr. #{name}, nice to meet you!"
elsif last_char == 'a'
  puts "Hello, Miss. #{name}, nice to meet you!"
else
  puts "Hello, #{name}, nice to meet you!"
end
