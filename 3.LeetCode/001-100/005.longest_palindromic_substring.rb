# @param {String} s
# @return {String}
def longest_palindrome(s)
  str = "@"
  s.each_char do |c|
    str << "#" << c
  end
  str << "#"
  arr = Array.new(str.size)
  mx_val, mx_idx, mx_all = 0
  result_val, result_idx = 0
  #puts "--- first check --- \ns:#{s}\nstr:#{str}\narr:#{arr}\narr.size:#{arr.size}"
  (1...arr.size).each do | i |
    arr[i] = mx_val > i ? min(arr[2 * mx_idx - i], mx_val - i) : 1
    while str[i + arr[i]] == str[i - arr[i]] do
      arr[i] += 1
    end
    if mx_val < i + arr[i] then
      mx_val = arr[i] + i
      mx_idx = i
    end
    if result_val < arr[i] then
      result_val = arr[i]
      result_idx = i
    end
  end
  puts "\n\n--- second check --- \nresult_val:#{result_val},result_idx:#{result_idx}\ns:#{s}\nstr:#{str}\narr:#{arr}\narr.size:#{arr.size}"
  
  result_idx -= 1
  id = result_idx / 2 
  len = result_val / 2 - 1
  puts "\nid:#{id}"
  puts "len:#{len}"
    
  if result_idx % 2 == 0
    puts "0: #{id - len - 1}, #{id + len}"
    new_str = s[(id - len - 1)..(id + len)]
  else
    puts "1:#{id - len}, #{id + len}"
    new_str = s[(id - len)..(id + len)]
  end
end 

def min (a, b)
  a < b ? a : b
end