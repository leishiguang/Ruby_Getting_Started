# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  str = ""
  i = 0
  return "" if strs.empty?
  strs[0].each_char do |char|
    strs.each do |item|
      if char == item[i] then
        next
      else
        char = false
        break
      end
    end
    if char then
     str.concat(char)
    else
      return str
    end
    i += 1
  end
end