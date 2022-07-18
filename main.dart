import 'linked_list/linked_list.dart';
import 'stack/stack.dart';

void main() {
  // Stack
  final stack = Stack<int>();
  stack.push(2);
  stack.push(1);

  print(stack);

  stack.pop();
  print(stack);

  const list = ['S', 'U', 'M', 'M', 'E', 'R'];
  final stackFromList = Stack<String>.of(list);
  print(stackFromList);
  stackFromList.pop();
  print(stackFromList);
}
