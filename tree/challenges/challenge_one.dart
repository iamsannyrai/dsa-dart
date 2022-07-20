// print tree in level order

import '../../queue/queue.dart';
import '../tree.dart';

void main() {
  final root = TreeNode(15);
  root.add(TreeNode(1)
    ..add(TreeNode(1))
    ..add(TreeNode(5))
    ..add(TreeNode(0)));

  root.add(TreeNode(17)..add(TreeNode(2)));
  root.add(TreeNode(20)
    ..add(TreeNode(5))
    ..add(TreeNode(7)));

  printEachLevel(root);
}

void printEachLevel<T>(TreeNode<T> tree) {
  final result = StringBuffer();
  var queue = QueueStack<TreeNode<T>>();
  var nodesLeftInCurrentLevel = 0;
  queue.enqueue(tree);
  while (!queue.isEmpty) {
    nodesLeftInCurrentLevel = queue.length;
    while (nodesLeftInCurrentLevel > 0) {
      final node = queue.dequeue();
      if (node == null) break;
      result.write('${node.value} ');
      for (var element in node.children) {
        queue.enqueue(element);
      }
      nodesLeftInCurrentLevel -= 1;
    }
    result.write('\n');
  }
  print(result);
}
