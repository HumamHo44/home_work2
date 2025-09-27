//Given the head of a singly linked list, reverse the list, and return the reversed list.

void main() {
  ListNode listNode5 = ListNode(5);
  ListNode listNode4 = ListNode(4, listNode5);
  ListNode listNode3 = ListNode(3, listNode4);
  ListNode listNode2 = ListNode(2, listNode3);
  ListNode head = ListNode(1, listNode2);

  ListNode reversed = reverseList(head)!;
  printList(reversed);
}

void printList(ListNode? head) {
  while (head != null) {
    print(head.val);
    head = head.next;
  }
}

ListNode? reverseList(ListNode? head) {
  ListNode? prev = null;
  ListNode? current = head;

  while (current != null) {
    ListNode? next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  return prev;
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
