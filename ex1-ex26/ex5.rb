my_name = 'Zed A. Shaw'
my_age = 35 
my_height = 74 
my_weight = 180 
my_eyes = 'Blue'
my_teeth = 'White'
my_hair = 'Brown'

puts "Let's talk about %s." % my_name
puts "He's %d inches tall." % my_height
puts "He's %d pounds heavy." % my_weight

puts "He's got %s eyes and %s hair." % [my_eyes, my_hair]

puts "If I add %d, %d, and %d I get %d." % [
	my_age, my_height, my_weight, my_age + my_height + my_weight]
