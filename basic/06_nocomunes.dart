import 'dart:collection';

void main() {

  // Queue => colas | iterable
  Queue<int> balls = Queue();

  balls.addAll([60, 7, 33, 49]);

  Iterator i = balls.iterator;

 while (i.moveNext()) {
    print(i.current);
  };
}
