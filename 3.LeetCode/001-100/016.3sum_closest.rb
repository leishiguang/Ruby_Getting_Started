# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!
  $Infinity = 1.0/0
  res = $Infinity
  dis = $Infinity
  nums.each_with_index do |item, idx|
    target_2 = target - item
    tmp_res = two_sum_closest(nums, idx+1, target_2) + item
    new_dis = (tmp_res - target).abs
    if new_dis == 0
      return target
    end
    if new_dis < dis
      res = tmp_res
    end
    dis = new_dis
  end
  res
end

def two_sum_closest(nums, start, target)
  head = start
  tail = nums.size - 1
  res = $Infinity
  dis = $Infinity
  while head < tail
    tmp = nums[head] + nums[tail]
    if tmp < target
      if target - tmp < dis
        res = tmp
        dis = target - tmp
      end
      head += 1
    elsif tmp > target
      if tmp - target < dis
        res = tmp
        dis = tmp - target
      end
      tail -= 1
    else
      return target
    end
  end
  return res
end

=begin

def three_sum_closest(nums, target)
  nums = nums.sort
  min = nil
  min_sum = nil

  nums.each.with_index do |num, index|
    low = index + 1
    high = nums.length - 1

    while low < high do
      sum = num + nums[low] + nums[high]
      diff = sum - target

      if min.nil? || diff.abs <= min
        min = diff.abs
        min_sum = sum
      end

      if diff == 0
        return min_sum
      elsif diff < 0
        low += 1
      else
        high -= 1
      end
    end
  end

  min_sum
end=end
