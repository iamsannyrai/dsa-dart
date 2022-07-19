import 'linked_list/linked_list.dart';
import 'queue/queue.dart';
import 'stack/stack.dart';

void main() {
  // // Stack
  // final stack = Stack<int>();
  // stack.push(2);
  // stack.push(1);

  // print(stack);

  // stack.pop();
  // print(stack);

  // const list = ['S', 'U', 'M', 'M', 'E', 'R'];
  // final stackFromList = Stack<String>.of(list);
  // print(stackFromList);
  // stackFromList.pop();
  // print(stackFromList);

  // // Linked List
  // final linkedList = LinkedList<int>();
  // linkedList.push(2);
  // linkedList.push(1);

  // linkedList.append(4);
  // linkedList.append(5);

  // print('Before: $linkedList');
  // var middleNode = linkedList.nodeAt(1)!;
  // linkedList.insertAfter(middleNode, 3);
  // print('After insert:  $linkedList');
  // final poppedValue = linkedList.pop();
  // print("final: $linkedList, popped: $poppedValue");
  // linkedList.removeLast();
  // print(linkedList);

  // for (final element in linkedList) {
  //   print(element);
  // }

  // Queue
  final queue = QueueList<String>();
  queue.enqueue('Ray');
  queue.enqueue('Brian');
  queue.enqueue('Eric');
  print(queue);
  queue.dequeue();
  print(queue);
  print(queue.peek);
}
