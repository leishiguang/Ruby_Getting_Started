# @param {Integer} n
# @return {String}

def count_and_say(n)
  
  str = '1'
  count = 0
  curr_char = str[0]
  new_str = ""
  str.each_char do |c|
    if curr_char == c
      count += 1
    else
      new_str << count.to_s << curr_char
      curr_cahr = c
      count = 0
    end
  end
  new_str

end


def tmp_count_and_say(n)
  result = "1"
  n.times do
    result = say_string(result)
    puts result
  end
  result
end

def say_string(str)
  count = 0
  curr_char = str[0]
  new_str = ""
  str.each_char do |c|
    if curr_char == c
      count += 1
    else
      new_str << count.to_s << curr_char
      curr_cahr = c
      count = 0
    end
  end
  new_str
end