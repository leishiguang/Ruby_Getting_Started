# @param {String} s
# @return {Integer}
def num_decodings(s)
  num_decodings_1 s
  #num_decodings_2 s
end


def num_decodings_1(s)
  s = s.to_s
  return 0 if s.empty? or s[0] ==  '0'
  dp = Array.new(s.length + 1, 0)
  dp[0] = dp[1] = 1
  (2..s.length).each do | i |
    first = s[i-1,1].to_i
    second = s[i-2,2].to_i
    dp[i] += dp[i-1] if first >=1 && first <= 9
    dp[i] += dp[i-2] if second >=10 && second <= 26
  end
  dp.last
end


# @param {String} s
# @return {Integer}
def num_decodings_2(s)
  n = s.size
  return 0 if n == 0
  memo = Array.new(n+1, 0)
  memo[n] = 1
  memo[n-1] = s[n-1] != '0' ? 1 : 0
  (n-2).downto(0).each do |i|
    if s[i] == '0'
      next
    else
      memo[i] = s[i,2].to_i <= 26 ? memo[i+1]+memo[i+2] : memo[i+1]
    end
  end
  memo[0]
end