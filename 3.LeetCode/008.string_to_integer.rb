
# @param {String} str
# @return {Integer}
def my_atoi(str)
  str.delete! " "
  key = true
  if str[0] == "-" or str[0] == "+"
    key = false if str[0] == "-"
    str[0] = "0"
  end
  result, i = "", 0
  str.each_char do |c|
    if c =~ /(\d)/
      result << $1
      i += 1
    else
      break
    end
  end
  result = result.to_i
  result = result > 2147483648 ? 2147483648 : result
  if key
    result -= 1 if result == 2147483648
  else
    result *= -1
  end
  result
end
