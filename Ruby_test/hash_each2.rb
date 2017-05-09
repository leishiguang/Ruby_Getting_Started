sum = 0
outcome = {"can_jia_fei"=>1000, "gua_jian_fei"=>1000, "lian_huan_hui_fei"=>4000}
outcome.each do |iteam, price|
  sum += price
end

puts "he_ji: #{sum}"