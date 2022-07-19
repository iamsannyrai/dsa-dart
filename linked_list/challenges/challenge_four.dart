// remove all occurrence

import '../linked_list.dart';

void main() {
  var list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(2);
  list.push(1);
  list.push(1);

  list.removeAll(2);
  print(list);
}
