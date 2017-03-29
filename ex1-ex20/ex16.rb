filename = ARGV.first
script = 10

puts "we're going to erase #{filename}"
puts "If you don't want that, hit CTRL_C (^C)."
puts "If you do want that, hit RETURN."

print "?"
STDIN.gets

puts "Opening the file..."
target = File.open(filename,'w')

puts "Truncating  the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

### rewrite 

# target.write(line1)
# target.write("\n")
# target.write(line2)
# target.write("\n")
# target.write(line3)
# target.write("\n")

puts <<LINE
This is what you want to write:
#{line1}
#{line2}
#{line3}
LINE

puts "I'm going to write these to the file."

LINE="#{line1}"+"\n"+"#{line2}"+"\n"+"#{line3}"
target.write("#{LINE}")

puts "And finally, we close it."
target.close()