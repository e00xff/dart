import 'dart:collection';
void main(List<String> args) {
  // Ordered, no index, add and remove from the start and end

  Queue items = new Queue();
  items.add(1);
  items.add(2);
  items.add(3);
  items.removeFirst();
  items.removeLast();
  print(items);

}