// print in reverse

import '../linked_list.dart';

void main() {
  final linkedList = LinkedList<int>();
  linkedList.push(3);
  linkedList.push(2);
  linkedList.push(1);

  printListInReverse(linkedList);
}

void printListInReverse(LinkedList<int> linkedList) {
  printNodeInReverse(linkedList.head);
}

void printNodeInReverse(Node<int>? node) {
  if (node == null) return;
  printNodeInReverse(node.next);
  print(node.value);
}
