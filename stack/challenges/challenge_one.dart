// Reverse a list

import '../stack.dart';

void main() {
  final inputList = ['S', 'A', 'N', 'N', 'Y'];
  printInReverse<String>(inputList);
}

void printInReverse<E>(List<E> list) {
  final stack = Stack<E>();
  for (E e in list) {
    stack.push(e);
  }

  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}
