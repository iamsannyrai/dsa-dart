// Balance the Parantheses

import '../stack.dart';

void main() {
  final balancedInput = 'h((e))llo(world)()';
  final unBalancedInput = '(hello world';
  checkBalancedParantheses(balancedInput);
  checkBalancedParantheses(unBalancedInput);
}

void checkBalancedParantheses(String input) {
  final opening = '('.codeUnitAt(0);
  final closing = ')'.codeUnitAt(0);

  final stack = Stack<int>();

  for (int e in input.codeUnits) {
    if (e == opening) {
      stack.push(e);
    } else if (e == closing) {
      stack.pop();
    } else {
      // do nothing
    }
  }

  print("$input is ${stack.isEmpty ? 'balanced' : 'not balanced'}");
}
