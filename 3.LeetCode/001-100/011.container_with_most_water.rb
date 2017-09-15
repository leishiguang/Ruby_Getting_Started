# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  left = 0
  right = height.size - 1
  max_area = 0
  while left < right
    min = height[left] > height[right] ? right : left
    new_area = height[min] * (right - left)
    max_area = max_area > new_area ? max_area : new_area
    min == right ? right -= 1 : left += 1
  end
  max_area
end
