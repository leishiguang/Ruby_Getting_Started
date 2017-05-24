puts "chapters 15 Question 1."

wday1 = {sunday: "7", monday: "1", tuesday: "2", Wednesday: "3", Thursday: "4", Friday: "5", Saturday: "6"}
wday2 = {"sunday"=>"7", "monday"=>"1"}

wday3 = Hash.new("")
wday3["sunday"] = "7"
wday3.store("monday", "1")

wday1.each do |ary|
  print ary
end 
print "\n"
p wday1.to_a
print "\n"
p wday2.to_a
print "\n"
p wday3.to_a
print "\n"

puts "chapters 15 Question 2."

count = 0
wday1.each do |variable|
  count += 1
end
puts count
print "\n"

puts "chapters 15 Question 3."

wday1.each do |key,value|
  print "\"#{key}\" is #{value}\n"
end 
print "\n"

puts "chapters 15 Question 4."


def str2hash(str)
  
  str.gsub!(/\n/," ")
  str.gsub!(/\t/," ")
  column = str.split(/ /)
  column.delete_if{|iteam| iteam == ""}
  result = Hash.new("")
  ((column.length) / 2).times do |i|
    result.store(column[2 * i],column[2 * i + 1])
  end
  return result
end

def str2hash_again(str)
  result = Hash.new()
  str = str.split(/\s+/)
  while key = str.shift
    value = str.shift
    result[key] = value
  end
  return result
end

str = "blue 蓝色 white\t 白色\nred 红色"
p str2hash(str)
print "\n"
str = "blue 蓝色 white\t 白色\nred 红色"
p str2hash_again(str)