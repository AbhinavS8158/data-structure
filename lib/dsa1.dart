class Node {
  int value;
  Node? next;
  Node(this.value);
}

class LinkedList {
  Node? head;
  Node? tail;
  int size = 0;

  bool isEmpty() => size == 0;

  void append(int value) {
    Node node = Node(value);
    if (isEmpty()) {
      head = node;
      tail = node;
    } else {
      tail?.next = node;
      tail = node;
    }
    size++;
  }

  void prepend(int value) {
    Node node = Node(value);
    if (isEmpty()) {
      head = node;
      tail = node;
    } else {
      node.next = head;
      head = node;
    }
    size++;
  }

  void remove(int value) {
    if (isEmpty()) {
      print("List is empty");
      return;
    }

    // Remove the head node if it matches the value
    if (head?.value == value) {
      head = head?.next;
      size--;
      if (size == 0) {
        tail = null;
      }
      return;
    }

    Node? prev = null;
    Node? current = head;

    while (current != null && current.value != value) {
      prev = current;
      current = current.next;
    }

    if (current == null) {
      print('Value not found');
      return;
    }

    prev?.next = current.next;

    // Remove the last element
    if (current == tail) {
      tail = prev;
    }
    size--;
  }

  void reverse() {
    if (isEmpty()) {
      print('List is empty');
      return;
    }

    Node? prev = null;
    Node? current = head;
    tail = head;

    while (current != null) {
      Node? next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
  }

  void findOddNumber() {
    if (isEmpty()) {
      print('The list is empty');
      return;
    }
    Node? curr = head;
    List<int> oddNumbers = [];
    while (curr != null) {
      if (curr.value % 2 == 1) {
        oddNumbers.add(curr.value);
      }
      curr = curr.next;
    }
    print("Odd numbers: $oddNumbers");
  }

  void addBeforePosition(int value, int position) {
    if (position < 1 || position > size + 1) {
      print('Invalid position');
      return;
    }

    Node node = Node(value);

    if (position == 1) {
      prepend(value);
      return;
    }

    Node? current = head;
    Node? prev = null;
    int currentPos = 1;

    while (currentPos < position) {
      prev = current;
      current = current?.next;
      currentPos++;
    }

    node.next = current;
    prev?.next = node;
    size++;
  }

  void findMiddle() {
    if (isEmpty()) {
      print('List is empty');
      return;
    }
    Node? fast = head;
    Node? slow = head;

    while (fast != null && fast.next != null) {
      fast = fast.next?.next;
      slow = slow?.next;
    }

    print('Middle of the list: ${slow?.value}');
  }

  void sumOf() {
    if (isEmpty()) {
      print('List is empty');
      return;
    }
    int sum = 0;
    Node? current = head;
    while (current != null) {
      sum += current.value;
      current = current.next;
    }
    print('Sum of the list is: $sum');
  }

  void removeDuplicates() {
    if (isEmpty()) {
      print('List is empty');
      return;
    }

    Set<int> values = {};
    Node? current = head;
    Node? prev = null;

    while (current != null) {
      if (values.contains(current.value)) {
        prev?.next = current.next;
        size--;
      } else {
        values.add(current.value);
        prev = current;
      }
      current = current.next;
    }
    // Update the tail if necessary
    tail = prev;
  }

  void printList() {
    if (isEmpty()) {
      print("List is empty");
      return;
    }
    Node? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

void main() {
  LinkedList linkedList = LinkedList();
  linkedList.append(3);
  linkedList.append(6);
  linkedList.append(9);
  linkedList.prepend(1);
  linkedList.prepend(2);
  linkedList.printList();

  print("\nAfter deletion:");
  linkedList.remove(2);
  linkedList.remove(9);
  linkedList.printList();

  print('\nAfter reverse:');
  linkedList.reverse();
  linkedList.findOddNumber();
  linkedList.printList();

  print('\nAdd before position:');
  linkedList.addBeforePosition(4, 2);
  linkedList.addBeforePosition(4, 3);
  linkedList.findMiddle();
  linkedList.sumOf();
  linkedList.printList();

  print('\nRemove duplicates:');
  linkedList.removeDuplicates();
  linkedList.printList();
}
