class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? middleNode(ListNode? head) {
    ListNode? current = head;
    int count = 0;
    while (current != null) {
      count += 1;
      current = current.next;
    }
    int middle = count ~/ 2;
    while (middle != 0) {
      head = head!.next;
      middle -= 1;
    }
    return head;
  }
}
