# @param {String} s
# @return {Integer}
def roman_to_int(s)
  h1 = Hash[""=>0, "I"=>1, "II"=>2, "III"=>3, "IV"=>4, "V"=>5, "VI"=>6, "VII"=>7, "VIII"=>8, "IX"=>9]
  h2 = Hash[""=>0, "X"=>10, "XX"=>20, "XXX"=>30, "XL"=>40, "L"=>50, "LX"=>60, "LXX"=>70, "LXXX"=>80, "XC"=>90]
  h3 = Hash[""=>0, "C"=>100, "CC"=>200, "CCC"=>300, "CD"=>400, "D"=>500, "DC"=>600, "DCC"=>700, "DCCC"=>800, "CM"=>900]
  h4 = Hash[""=>0, "M"=>1000, "MM"=>2000, "MMM"=>3000]
  /(M*)([CDM]*)([XLC]*)([VIX]*)/ =~ s
  #puts $1
  #puts $2
  #puts $3
  #puts $4
  h4[$1?$1:0]+h3[$2?$2:0]+h2[$3?$3:0]+h1[$4?$4:0]
end
