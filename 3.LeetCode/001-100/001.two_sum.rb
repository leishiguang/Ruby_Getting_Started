# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    search = Hash.new
    nums.each_with_index do |item,index|
        i = search[target-item]
        return [i, index] if i != nil
        search[item] = index
    end
end