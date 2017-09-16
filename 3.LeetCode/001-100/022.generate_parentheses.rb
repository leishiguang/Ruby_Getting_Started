# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  generate_parenthesis_1(n)
#  generate_parenthesis_2(n)
end

def generate_parenthesis_1(n)
  n = n.to_i
  result = []
  generate_parenthesis_1_helper(n,n,'',result)
  result
end

def generate_parenthesis_1_helper(left,right,out,result)
  return if left < 0 or right < 0 or left > right
  if left == 0 and right == 0
    result.push(out)
    return
  end
  generate_parenthesis_1_helper(left - 1, right, out + '(',result)
  generate_parenthesis_1_helper(left, right - 1, out + ')',result)
end

# @param {Integer} n
# @return {String[]}
def generate_parenthesis_2(n)
    n = n.to_i
    result = []
    generate_parenthesis_2_helper(n, 0, 0, '', result)
    result
end


def generate_parenthesis_2_helper(pairs, lparen, rparen, tracing, result)
  if lparen + rparen == 2 * pairs
    result << tracing; return
  end

  if lparen < pairs
    generate_parenthesis_2_helper(pairs, lparen + 1, rparen, tracing + '(', result)
  end

  if rparen < pairs && rparen < lparen
    generate_parenthesis_2_helper(pairs, lparen, rparen + 1, tracing + ')', result)
  end
end