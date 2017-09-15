# @param {Integer} n
# @return {String}
def count_and_say(n)
  result = "1"
  (n - 1).times do
    result = do_count_and_say(result)
  end
  result
end

def do_count_and_say(str)
  count = 0
  curr_char = str[0]
  new_str = ""
  str << "\n"
  str.each_char do |c|
    if curr_char == c
      count += 1
    else
      new_str << count.to_s << curr_char
      curr_char = c
      count = 1
    end
  end
  new_str
end