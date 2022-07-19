// reverse a linked list

import '../linked_list.dart';

void main(List<String> args) {
  final linkedList = LinkedList<int>();
  linkedList.push(3);
  linkedList.push(2);
  linkedList.push(1);

  final reversedLinkedList = LinkedList<int>();
  for (int e in linkedList) {
    reversedLinkedList.push(e);
  }
  print(reversedLinkedList);
}
