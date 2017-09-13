# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# initialize a list
# @param {Integer} size
# @return {ListNode}
def make_list_node(size)
  head = ListNode.new(nil)
  node = head
  size.times do |i|
    node.next = ListNode.new(i)
    node = node.next
  end
  head
end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  pre = head
  cur = head.next
  (n - 1).times do
    cur = cur.next
  end
  return head.next if cur.nil?
  while cur.next
    pre = pre.next
    cur = cur.next
  end
  pre.next = pre.next.next
  head
end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end_bad(head, n)
  node_length = 0
  node = head.next
  while node
    node_length += 1
    node = node.next
  end
  node = head
  want_to_delete = node_length - n
  node_length.times do |i|
    if i == want_to_delete then
      node.next = node.next.next
      break
    else
      node = node.next
    end
  end
  head
end

