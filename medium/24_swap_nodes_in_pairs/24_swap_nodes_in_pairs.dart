class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? swapPairs(ListNode? head) {
    if (head == null || head.next == null) {
      return head;
    }
    ListNode? prev;
    ListNode? current = head;
    ListNode? nextNode = head.next;

    head = nextNode;

    while (true) {
      current!.next = nextNode!.next;
      nextNode.next = current;
      if (prev != null) {
        prev.next = nextNode;
      }

      prev = current;
      current = current.next;

      if (current == null || current.next == null) {
        break;
      }
      nextNode = current.next;
    }
    return head;
  }
}
