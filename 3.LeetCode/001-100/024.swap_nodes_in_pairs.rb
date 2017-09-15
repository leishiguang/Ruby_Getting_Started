# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
  return head if (!head || !head.next)
  tmp = head.next
  head.next = swap_pairs(head.next.next)
  tmp.next = head
  return tmp
end

=begin

def swap_pairs(head)
  return head if head.nil? || head.next.nil?
  one = head
  start = one.next
  zero = nil
  while one do
    #puts one.inspect
    two = one.next
    #puts two.inspect
    if two.nil?
      puts 'break'
      break
    end
    one.next = two.next
    two.next = one
    zero.next = two if zero
    zero = one
    one = one.next
  end
  start
end

=end
