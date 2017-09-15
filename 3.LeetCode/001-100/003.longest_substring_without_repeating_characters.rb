# @param {String} s
# @return {Integer}

def length_of_longest_substring(s)  
  max = 0  
  map = {}  
  left = -1  
  s.chars.each_with_index do |c, i|  
    if ci = map[c] and ci > left  
      left = ci
    end  
    map[c] = i
    #puts "#{i},left=#{left},#{map}"
    new_length = i - left
    max = new_length if max < new_length  
  end  
  max  
end