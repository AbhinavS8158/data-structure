
class Stack {
  List<int> stack = [];

  void push(int data) {
    stack.add(data);
  }

  int pop() {
    return stack.removeLast(); // Return the last item removed
  }

  void display() {
    for (int i = stack.length - 1; i >= 0; i--) { // Start from stack.length - 1
      print(stack[i]);
    }
  }

  void midremove() {
    int mid = stack.length ~/ 2;
    List<int> temp = [];
    int count = 0;
    while (stack.isNotEmpty) {
      int current = pop();
      if (count != mid) {
        temp.add(current);
      }
      count++;
    }
    while (temp.isNotEmpty) {
      push(temp.removeLast());
    }
  }
}

void main() {
  Stack st = Stack();
  st.push(7);
  st.push(8);
  st.push(9);
  st.push(1);
  st.push(4);
  st.midremove(); // Uncomment this line to remove the middle element
  st.display();
}
