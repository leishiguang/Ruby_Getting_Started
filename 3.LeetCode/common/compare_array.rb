# @param tow array you want to compare
# @return boolen
def is_array_element_equal(arr1,arr2)
  return false unless (arr1 - arr2).empty?
  return false unless (arr2 - arr1).empty?
  true
end