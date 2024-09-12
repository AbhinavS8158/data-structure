class Node {
  int data;
  Node? next;
  
  Node(this.data);
}

class LinkedList {
  Node? head;

  // Insert at the end of the list
  void insert(int data) {
    final newNode = Node(data);
    
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = newNode;
    }
  }

  // Insert at the beginning of the list
  void prepend(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  // Insert at a specific position in the list
  void add(int data, int position) {
    Node newNode = Node(data);
    
    if (position == 0) {
      newNode.next = head;
      head = newNode;
      return;
    }

    Node? current = head;
    int index = 0;
    
    while (current != null && index < position - 1) {
      current = current.next;
      index++;
    }
    
    if (current == null) {
      print("Position out of bounds.");
      return;
    }
    
    newNode.next = current.next;
    current.next = newNode;
  }

  // Display all nodes in the list
  void display() {
    Node? current = head;
    
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  final list = LinkedList();
  list.insert(7);
  list.prepend(2);
  list.insert(9);
  list.add(34, 2);
  list.display();
}
