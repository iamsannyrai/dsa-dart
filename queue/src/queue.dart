import '../../ring_buffer/ring_buffer.dart';

abstract class Queue<E> {
  bool enqueue(E value);
  E? dequeue();
  bool get isEmpty;
  E? get peek;
}

// List based implementation
class QueueList<E> implements Queue<E> {
  final _list = <E>[];
  @override
  E? dequeue() => isEmpty ? null : _list.removeAt(0);

  @override
  bool enqueue(E value) {
    _list.add(value);
    return true;
  }

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  E? get peek => isEmpty ? null : _list.first;

  @override
  String toString() => _list.toString();
}

// Ring Buffer based Implementation
class QueueRingBuffer<E> implements Queue<E> {
  QueueRingBuffer(int length) : _ringBuffer = RingBuffer<E>(length);

  final RingBuffer<E> _ringBuffer;

  @override
  E? dequeue() => _ringBuffer.read();

  @override
  bool enqueue(E value) {
    if (_ringBuffer.isFull) return false;
    _ringBuffer.write(value);
    return true;
  }

  @override
  bool get isEmpty => _ringBuffer.isEmpty;

  @override
  E? get peek => _ringBuffer.peek;

  @override
  String toString() => _ringBuffer.toString();
}

class QueueStack<E> implements Queue<E> {
  final _leftStack = <E>[];
  final _rightStack = <E>[];

  @override
  E? dequeue() {
    if (_leftStack.isEmpty) {
      _leftStack.addAll(_rightStack.reversed);
      _rightStack.clear();
    }
    if (_leftStack.isEmpty) return null;
    return _leftStack.removeLast();
  }

  @override
  bool enqueue(E value) {
    _rightStack.add(value);
    return true;
  }

  @override
  bool get isEmpty => _leftStack.isEmpty && _rightStack.isEmpty;

  @override
  E? get peek => _leftStack.isNotEmpty ? _leftStack.last : _rightStack.first;

  int get length => _leftStack.length + _rightStack.length;
}
