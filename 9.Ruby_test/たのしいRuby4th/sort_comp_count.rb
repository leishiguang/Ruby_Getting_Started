ary = %w(
  Ruby is a open source programming language with a focus
  on simplicity and productivity. It has an elegant syntax
  that is natural to read and easy to write.
)

call_num = 0
sorted = ary.sort do |a, b|
  call_num += 1
  a.length <=> b.length
end

puts "pai_xu_jie_guo #{sorted}"
puts "shu_zu_de_yuan_su_su_liang #{ary.length}"
puts "diao_yong_kuai_ci_shu #{call_num}"


=begin
puts "short_by begin...."

sorted = ary.sort_by do |item|
  item.length
end

puts sorted
=end

