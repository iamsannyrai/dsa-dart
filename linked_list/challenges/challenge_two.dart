// find a middle node

import '../linked_list.dart';

void main() {
  final linkedList = LinkedList<int>();
  linkedList.push(3);
  linkedList.push(2);
  linkedList.push(1);

  final middleNode = getMiddle<int>(linkedList);
  print("middle is ${middleNode!.value}");
}

Node<E>? getMiddle<E>(LinkedList<E> linkedList) {
  var fast = linkedList.head;
  var slow = linkedList.head;

  while (fast?.next != null) {
    fast = fast?.next?.next;
    slow = slow?.next;
  }
  return slow;
}
