# @param {String} s
# @return {String}
def longest_palindrome(s)
    str = "@"
    s.each_char do |c|
        str << "#" << c
    end
    str << "#"
    arr = Array.new(str.size)
    mx_val, mx_idx, mx_all = 0
    #puts "--- first check --- \ns:#{s}\nstr:#{str}\narr:#{arr}\narr.size:#{arr.size}"
    
    (1...arr.size).each do | i |
        arr[i] = mx_val > i ? min(arr[2 * mx_idx - i], mx_val - i) : 1
        while str[i + arr[i]] == str[i - arr[i]] do
            arr[i] += 1
        end
        if mx_val < i + arr[i] then
            mx_val = arr[i] + i
            mx_idx = i
        end
    end
    puts "\n\n--- second check --- \nmx_val:#{mx_val},mx_idx:#{mx_idx}\ns:#{s}\nstr:#{str}\narr:#{arr}\narr.size:#{arr.size}"
    
    id = mx_idx / 2 - 1
    len = (mx_val - mx_idx) / 2
    if mx_idx % 2 == 0
        new_str = s[id - len, id + len - 1]
    else
        new_str = s[id - len, id + len]
    end
end

def min (a, b)
    a < b ? a : b
end