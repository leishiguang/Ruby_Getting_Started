# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  res = nums[0]
  sum = 0
  nums.each do |item|
    sum = [sum + item , item].max
    res = [res, sum].max
  end
  res
end

def max_sub_array_2(nums)
  sum, subsume = nums[0], nums[0]
  1.upto(nums.size - 1) do |i|
    subsume = 0 if subsume < 0
    subsume += nums[i]
    sum = subsume if sum < subsume
  end
  sum
end