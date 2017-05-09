sum = 0
outcome = {"can_jia_fei"=>1000, "gua_jian_fei"=>1000, "lian_huan_hui_fei"=>4000}
outcome.each { |pair|
  sum += pair[1]
}

puts "he_ji: #{sum}"
