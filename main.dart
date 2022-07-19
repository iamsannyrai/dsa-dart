import 'linked_list/linked_list.dart';
import 'queue/queue.dart';
import 'stack/stack.dart';
import 'tree/tree.dart';

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

  // // Queue
  // final queue = QueueList<String>();
  // queue.enqueue('Ray');
  // queue.enqueue('Brian');
  // queue.enqueue('Eric');
  // print(queue);
  // queue.dequeue();
  // print(queue);
  // print(queue.peek);

  // Tree
  final tree = makeBeverageTree();
  tree.forEachDepthFirst((node) {
    print(node.value);
  });
}

TreeNode<String> makeBeverageTree() {
  final tree = TreeNode('beverages');
  final hot = TreeNode('hot');
  final cold = TreeNode('cold');
  final tea = TreeNode('tea');
  final coffee = TreeNode('coffee');
  final chocolate = TreeNode('cocoa');
  final blackTea = TreeNode('black');
  final greenTea = TreeNode('green');
  final chaiTea = TreeNode('chai');
  final soda = TreeNode('soda');
  final milk = TreeNode('milk');
  final gingerAle = TreeNode('ginger ale');
  final bitterLemon = TreeNode('bitter lemon');
  tree.add(hot);
  tree.add(cold);
  hot.add(tea);
  hot.add(coffee);
  hot.add(chocolate);
  cold.add(soda);
  cold.add(milk);
  tea.add(blackTea);
  tea.add(greenTea);
  tea.add(chaiTea);
  soda.add(gingerAle);
  soda.add(bitterLemon);
  return tree;
}
