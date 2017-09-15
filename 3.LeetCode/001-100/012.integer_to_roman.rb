# @param {Integer} num
# @return {String}
def int_to_roman(num)
  map_v1 = ["", "M", "MM", "MMM"]
  map_v2 = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
  map_v3 = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
  map_v4 = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
  reuslt = map_v1[num / 1000] + map_v2[(num % 1000) / 100] + map_v3[(num % 100) / 10] + map_v4[num % 10]
end
