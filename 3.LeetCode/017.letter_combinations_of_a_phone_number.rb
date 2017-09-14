# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits.include? '0' or digits.include? '1' or digits.empty?
  dict = %w(abc def ghi jkl mno pqrs tuv wxyz)
  res = ['']
  digits.size.times do |i|
    n = res.size
    str = dict[digits[i].to_i - 2]
    n.times do
      tmp = res.shift
      str.size.times do |k|
        res.push(tmp + str[k])
      end
    end
  end
  res
end


def is_array_element_equal(arr1,arr2)
  return false unless (arr1 - arr2).empty?
  return false unless (arr2 - arr1).empty?
  true
end