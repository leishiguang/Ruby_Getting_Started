def block_args_test
  yield()
  yield(1)
  yield(1,2,3)
end

puts "through |a| get the parm"
block_args_test do |a|
  p [a]  
end

puts "through |a, b, c| get the parms"
block_args_test do |a, b, c|
  p [a, b, c]
end

puts


puts "through |*a| get the parm"
block_args_test do |*a|
  p [a]
end

puts