# @param {String} str
# @return {Integer}
=begin
def my_atoi(str)
  i = str.to_i
  if i > 2**31 - 1
    return 2**31 - 1
  end
  if i < -2**31
    return -2**31
  end
  return i
end
=end

# @param {String} str
# @return {Integer}
def my_atoi(str)
  #str.delete! " "
  i = 0
  str.each_char do |c|
    if c == " "
        str[i] = "0"
    else
        break
    end
    i += 1
  end
  key = true
  if str[i] == "-" or str[i] == "+"
    key = false if str[i] == "-"
    str[i] = "0"
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
