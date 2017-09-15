# @param {String} s
# @return {Boolean}
def is_valid(s)
    return false if s.length % 2 != 0
    ary = Array.new
    s.each_char do |c|
      case c 
      when "(", "{", "[" then
        ary.push(c)
      when ")" then
        return false if ary.pop != "("
      when "}" then
        return false if ary.pop != "{"
      when "]" then
        return false if ary.pop != "["
      else
        return false
      end
    end
    ary.empty?
end