# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  num_last = nil
  result = Array.new
  nums.each_with_index do |num, idx|
    next if num == num_last
    target = 0 - num
    two_sum(nums, idx+1, target, result)
    num_last = num
  end
  result
end

def two_sum(nums, start, target, result)
  head, tail = start, nums.size() - 1
  while head < tail
    tmp = nums[head] + nums[tail]
    if tmp < target
      head += 1
    elsif tmp > target
      tail -= 1
    else
      result << [nums[start-1], nums[head], nums[tail]]
      tmp = head + 1
      while tmp < tail && nums[tmp] == nums[head]
        tmp += 1
      end
      head = tmp
      tmp = tail - 1
      while tmp > head && nums[tmp] == nums[tail]
        tmp -= 1
      end
      tail = tmp
    end
  end
end

=begin
# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  ret = []
  sorted = nums.sort
  length = sorted.length
  prev = nil
  sorted.each_with_index do |num, index|
    next if prev == num
    tar = -num
    l = index + 1
    r = length - 1
    while l < r do
      sum = sorted[l] + sorted[r]
      if sum < tar
        l += 1
      elsif sum > tar
        r -= 1
      else
        ret << [sorted[index], sorted[l], sorted[r]]
        l += 1
        r -= 1
        while sorted[l-1] == sorted[l] do
          l += 1
        end
        while sorted[r+1] == sorted[r] do
          r -= 1
        end
      end
    end
    prev = num
  end
  ret
end
=end
