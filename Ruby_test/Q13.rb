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

puts "chapters 13 Question 3."
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

=begin
ary1.each_with_index()
=end