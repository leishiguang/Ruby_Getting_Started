# Given a non-negative integer represented as a non-empty array of digits, plus one to the integer.
# You may assume the integer do not contain any leading zero, except the number 0 itself.
# The digits are stored such that the most significant digit is at the head of the list.

# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  arr = digits.reverse
  arr[0] += 1
  arr.size.times do |i|
      if arr[i] == 10 then
        arr[i] = 0
        arr[i+1].nil? ? arr[i+1] = 1 : arr[i+1] += 1
      else
        break
      end
  end
  arr.reverse
end

def plus_one_2(digits)
  number = digits.join.to_i + 1
  number.to_s.chars.map.each { |num| num.to_i}
end