# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  result = haystack.index(needle)
  result ? result : -1
end

def str_str(haystack, needle)
  result = (haystack =~ Regexp.new(needle) )
  result ? result : -1
end