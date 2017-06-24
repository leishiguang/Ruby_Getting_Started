# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  curr = ListNode.new(nil)
  puts curr.val
  head = curr
  plus_key = 0
  key = true
  while (key) do
    sum = (l1 ? l1.val : 0) + (l2 ? l2.val : 0) + plus_key
    if sum > 9
      sum -= 10
      plus_key = 1
    else
      plus_key = 0
    end
    curr.val = sum
    l1 = l1 ? l1.next : nil
    l2 = l2 ? l2.next : nil
    key = l1 || l2 || plus_key != 0
    if (key)
      curr.next = ListNode.new(nil)
      curr = curr.next
    end
  end
  head
end
