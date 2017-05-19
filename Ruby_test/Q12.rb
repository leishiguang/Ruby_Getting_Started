puts "chapters 12 Question 1."

def cels2fahr ( cesl )
    return cesl * 9.0 / 5.0 + 32.0
end

puts cels2fahr(10)
puts cels2fahr(20)
puts cels2fahr(30)  


puts "chapters 12 Question 2."

def fahr2cels ( fahr )
  return (fahr - 32) * 5.0 / 9.0
end

(1..100).each do | num |
  print cels2fahr(num),"\t"
end

puts "chapters 12 Question 3."

def dice ()
  return Random.rand(6) + 1
end

puts dice

puts "chapters 12 Question 4."

def dice10()
  10.times do
    puts dice
  end
end

dice10()

puts "chapters 12 Question 5."

def prime?(num)
  if num < 2 
    return false
  end
  2.upto(Math.sqrt(num)) do |i|
    if num % i == 0 
     return false
   end
  end
  return true
end

puts prime?(rand(100))


