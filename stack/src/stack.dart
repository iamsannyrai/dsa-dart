class Stack<E> {
  List<E> _storage;
  Stack() : _storage = <E>[];
  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

  E get peek => _storage.last;

  bool get isEmpty => _storage.isEmpty;

  bool get isNotEmpty => !isEmpty;

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  @override
  String toString() {
    return '----Top----\n'
        '${_storage.reversed.join('\n')}'
        '\n--------';
  }
}
