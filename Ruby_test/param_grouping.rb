puts "do (key, value), index"
hash = {a: 100, b: 200, c:300}
hash.each_with_index do |(key, value), index|
  p [key, value, index]
end
puts
puts "do (value, key), index"
hash.each_with_index do |(value, key), index|
  p [key, value, index]
end