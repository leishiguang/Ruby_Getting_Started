user = ARGV.first
prompt = '>'

puts "Hi #{user}, I'm the #{10} script."
puts "I'd like to ask you a few question."
puts "Do you like me #{user}"
print prompt
likes = STDIN.gets.chomp()

puts "where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alright. so ou said #{likes} about liking me,
You live in #{lives}, not sure where that is.
And you have a #{computer} computer, Nice
MESSAGE
