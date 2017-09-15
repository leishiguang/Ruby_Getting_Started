# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  return [] if nums.size() < 4
  nums.sort!
  num_last = nil
  result = Array.new
  max = nums[-1] * 3
  nums.each_with_index do |num, idx|
    next if num == num_last
    next if num + max < target # too small
    break if num * 4 > target # too large
    target_result = target - num
    three_sum(nums, idx+1, target_result, result)
    num_last = num
  end
  result
end

def three_sum(nums, idx_from_four, target_result, result)
  num_last = nil
  max = nums[-1] * 2
  (idx_from_four..nums.size()-2).each do |idx|
    next if nums[idx] == num_last
    next if nums[idx] + max < target_result # too small
    break if nums[idx] * 3 > target_result # too large
    target = target_result - nums[idx]
    two_sum(nums, idx_from_four, idx+1, target, result)
    num_last = nums[idx]
  end
end

def two_sum(nums, idx_from_four, start, target, result)
  head, tail = start, nums.size() - 1
  while head < tail
    tmp = nums[head] + nums[tail]
    break if nums[tail] * 2 < target # too small
    break if nums[head] * 2 > target # too large
    if tmp < target
      head += 1
    elsif tmp > target
      tail -= 1
    else
      result << [nums[idx_from_four-1], nums[start-1], nums[head], nums[tail]]
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
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  combinations = nums.combination(2)
  unvalidated_results = two_sum(combinations, target)

  count_map = Hash.new(0)
  nums.each do |num|
    count_map[num] += 1
  end

  unvalidated_results.reject do |result|
    result.any?{ |num| result.count(num) > count_map[num] }
  end
end

def two_sum(combinations, target)
  results = Array.new
  my_hash = Hash.new
  combinations.each do |v1, v2|
    if my_hash[v1+v2]
      results += my_hash[v1+v2].map{ |c| ([v1,v2] + c).sort }
    end
    my_hash[target-v1-v2] ||= []
    my_hash[target-v1-v2] << [v1,v2]
  end
  results.uniq
end
=end
