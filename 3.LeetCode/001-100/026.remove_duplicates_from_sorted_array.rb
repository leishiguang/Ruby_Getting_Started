# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  last_num = nil
  nums.each_with_index do |item,i|
    if last_num == item
        nums[i] = nil
    else
        last_num = item
    end
  end
  nums.delete(nil)
  nums.size
end
  