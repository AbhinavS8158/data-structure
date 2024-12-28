class Stack {
  List<int> arr = [];
    void push(int data) {
    arr.add(data);
  }
  int pop() {
    return arr.removeLast();
  }
  bool isEmpty() {
    return arr.isEmpty;
  }
    void display() {
    for (int i = 0; i < arr.length; i++) {
      print(arr[i]);
    }
  }
    void removeMiddle() {
    int middleIndex = arr.length ~/ 2;
    _removeMiddleHelper(middleIndex);
  }
    void _removeMiddleHelper(int currentIndex) {
    if (currentIndex == 0) {
      pop(); 
      return;
    }
    int topElement = pop();
    _removeMiddleHelper(currentIndex - 1);
    push(topElement);
  }
}
void main() {
  Stack st = Stack();
  st.push(1);
  st.push(2);
  st.push(3);
  st.push(4);
  st.push(5);
  
  print("Original Stack:");
  st.display();
  st.removeMiddle();
  print("\nStack after removing middle element:");
  st.display();
}
