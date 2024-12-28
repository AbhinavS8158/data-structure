class StackUsingQueue {
  List<int> queue1 = [];
  List<int> queue2 = [];

  void push(int data) {
    queue1.add(data);
  }

  int? pop() {
    if (queue1.isEmpty && queue2.isEmpty) {
      return null; 
    }
    while (queue1.length > 1) {
      queue2.add(queue1.removeAt(0));
    }
    int? topElement = queue1.isEmpty ? null : queue1.removeAt(0);
    List<int> temp = queue1;
    queue1 = queue2;
    queue2 = temp;

    return topElement;
  }

  void display() {
    List<int> stackView = [];
    stackView.addAll(queue2);
    stackView.addAll(queue1.reversed);
    print(stackView);
  }
}

void main() {
  StackUsingQueue st = StackUsingQueue();

  st.push(10);
  st.push(11);
  st.push(12);
  st.push(13);
  st.push(14);
  st.pop();
  st.display(); 
}
