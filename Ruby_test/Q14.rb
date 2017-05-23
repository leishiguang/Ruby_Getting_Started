puts "chapters 14 Question 1."

str = "Ruby is an object oriented programming language"

column1 = str.split(/ /)
p column1

puts "chapters 14 Question 2."
p column1.sort

puts "chapters 14 Question 3."
p column1.sort_by{|s| s.downcase }

puts "chapters 14 Question 4."


str = "Ruby is an object oriented programming language"
ary = str.split
cap_ary = ary.collect{|word| word.capitalize }

str = ""
cap_ary.each do |s|
  str << s+" "
end
p str

puts "chapters 14 Question 4."

## 另一种解法
p cap_ary.join(" ")


puts "chapters 14 Question 5."

str = "Ruby is an object oriented programming language"
count = Hash.new
str.each_char do |c|
  count[c] = 0 unless count[c]
  count[c] += 1
end
count.keys.sort.each do |c|
  printf("'%s': %s\n", c, "*" * count[c])
end

puts "chapters 14 Question 5."
str = "Ruby is an object oriented programming language"
count = Hash.new(0)
str.each_char do |c|
  count[c] += 1
end
count.keys.sort.each do |c|
  printf("'%s': %s\n", c, "*" * count[c])
end

puts "chapters 14 Question 6."


=begin
def han2num (han)
  str_han = "零一二三四五六七八九"
  str_qian = "千"
  str_bai = "百"
  str_shi = "十"
  num = han.index(str_qian)-

  return(num)
end

=end

def han2num(string)
  digit4 = digit3 = digit2 = digit1 = "0"

  nstring = string.dup
  nstring.gsub!(/一/, "1")
  nstring.gsub!(/二/, "2")
  nstring.gsub!(/三/, "3")
  nstring.gsub!(/四/, "4")
  nstring.gsub!(/五/, "5")
  nstring.gsub!(/六/, "6")
  nstring.gsub!(/七/, "7")
  nstring.gsub!(/八/, "8")
  nstring.gsub!(/九/, "9")

  if nstring =~ /((\d)?千)?((\d)?百)?((\d)?十)?(\d)?$/
    if $1
      digit4 = $2 || "1"
    end
    if $3
      digit3 = $4 || "1"
    end
    if $5
      digit2 = $6 || "1"
    end
    digit1 = $7 || "0"
  end

  return (digit4+digit3+digit2+digit1).to_i
end

p han2num("七千八百二十三")
p han2num("千八百二十三")
p han2num("八百二十三")
p han2num("百二十三")
p han2num("百三")
p han2num("二十三")
p han2num("十三")
p han2num("三")