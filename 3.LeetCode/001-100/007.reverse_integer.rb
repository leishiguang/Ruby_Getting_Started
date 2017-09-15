# @param {Integer} x
# @return {Integer}
def reverse(x)
    str = x.to_s
    str.reverse!
    if str[-1] == "-"
        str.chop
        str.insert(0,'-')
    end
    return str.to_i if str.to_i.bit_length < 32
    0
end
