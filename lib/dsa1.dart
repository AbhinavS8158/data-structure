import 'dart:collection';

base class Node extends LinkedListEntry<Node> {
  String data;
  Node(this.data);
}

void main() {
  List<String> arr = ["A", "V", "S"];
  LinkedList<Node> linkedList = LinkedList<Node>();

  // Adding elements to the linked list
  for (var item in arr) {
    linkedList.add(Node(item));
  }

  // Printing elements in the original order
  for (var node in linkedList) {
    print(node.data);
  }

  // Printing elements in reverse order
  print("reversed");
  
  var lastnode = linkedList.last;
  while (lastnode != null) {
    print(lastnode.data);
    // lastnode = lastnode.previous;  // No need for the force unwrapping `!` since `previous` can be null
  }
}
