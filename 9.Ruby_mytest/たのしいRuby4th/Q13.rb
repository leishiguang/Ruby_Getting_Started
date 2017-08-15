puts "chapters 13 Question 1."

ary1 = Array.new(100) do |i|
  i + 1
end

100.times do |i|
  print ary1[i],"\t"
end
print "\n"

puts "chapters 13 Question 2."

ary2 = Array.new(100) do |i|
  ary1[i] * 100
end

puts "Print ary2 now."
100.times do |i|
  print ary2[i],"\t"
end
print "\n"


=begin
100.times do |i|
  ary1[i] *= 100
end

puts "Print ary1 now."
100.times do |i|
  print ary1[i],"\t"
end
print "\n"
=end

puts "Ary3 in chapters 13 Question 3."
ary3 = Array.new()
ary1.each do |elem|
  if (elem % 3) == 0
    ary3.push(elem)
  end
end

ary3.each do |elem|
  print elem,"\t"
end
print "\n"

puts "Ary1 in chapters 13 Question 3."

=begin
ary1.each_with_index do |elem, i|
  if (elem % 3) != 0
    ary1.delete_at(i)
  end
end
=end

ary1.delete_if{|elem| elem % 3 != 0}

ary1.each do |elem|
  print elem,"\t"
end
print "\n"


puts "chapters 13 Question 4."

ary1.reverse!
ary1.each do |elem|
  print elem,"\t"
end
print "\n"

puts "chapters 13 Question 5."
count = 0
ary1.each do |elem|
  count += elem
end
puts "The sum of ary1 is #{count}"


puts "chapters 13 Question 6."
ary6 = Array.new(100) do |i|
  i + 1
end
result = Array.new()
10.times do |i|
  result << ary6[i*10..i*10+9]
end

result.each do |elem|
  print elem
end

puts "chapters 13 Question 7."
def sum_array(ary1, ary2)
  i = 0
  result = []
  while i < ary1.length
    result << ary1[i] + ary2[i]
    i += 1
  end
  return result
end

num1 = [1,2,3]
num2 = [4,6,8]
p sum_array(num1, num2)