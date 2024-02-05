class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? removeElements(ListNode? head, int val) {
    ListNode? temp = ListNode(0);
    temp.next = head;
    ListNode? current = temp;
    while (current != null && current.next != null) {
      if (current.next!.val == val) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
    }
    return temp.next;
  }
}
