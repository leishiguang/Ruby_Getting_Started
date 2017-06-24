# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
# method one use Ruby API.
#   nums.delete(val)
#   nums.length
  count = 0
  nums.each do |item |
    if item != val
      nums[count] = item
      count += 1
    end
  end
  count
end