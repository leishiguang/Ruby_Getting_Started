# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  return 0 if target <= nums.first
  return nums.length - 1 if target == nums.last
  return nums.length if target > nums.last

  low = 0
  max = nums.length - 1
  while low <= max
    middle = (low + max) / 2
    if target == nums[middle]
      return middle
    elsif target > nums[middle]
      low = middle + 1
    else
      max = middle - 1
    end
  end
  low
end
