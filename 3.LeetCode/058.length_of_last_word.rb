# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  return 0 if s.nil?
  arr = s.split.last
  return 0 if arr.nil?
  return arr.length
end


=begin
# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  s.strip!
  return 0 if s.length == 0
  word = s.split(" ").last
  return word.length
end
=end
