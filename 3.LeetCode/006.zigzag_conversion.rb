# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return "" if s == nil || s.size == 0 || num_rows <= 0
  return s if num_rows == 1
  result = ""
  s_size = s.size
  size = 2 * num_rows - 2
  num_rows.times do |i|
  j = i
  key = i != 0 && i != num_rows - 1
  while j < s_size
    result << s[j]
      # except the first row and the last row
      if key then
        temp = j + size - 2 * i
        if temp < s_size then
          result << s[temp]
        end
      end
      j += size
    end
  end
  result
end