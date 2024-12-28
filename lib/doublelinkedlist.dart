// class Node{
//   int data;
//   Node?next;
//   Node?prev;
//   Node(this.data);
// }
// class DoublyLinkedList {
//   Node? head;

  
//   void append(int data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//       return;
//     }

//     Node? current = head;
//     while (current!.next != null) {
//       current = current.next;                
//     }
//     current.next = newNode;
//     newNode.prev = current;
//   }


//   void display() {
//     Node? current = head;
//     while (current != null) {
//       print(current.data);
//       current = current.next;
//     }
//   }

 
//   void delete(int value) {
//     if (head == null) {
//       print("List is empty, cannot delete.");
//       return;
//     }

//     if (head!.data == value) {
//       head = head!.next;
//       if (head != null) {
//         head!.prev = null;
//       }
//       return;
//     }

//     Node? current = head;
    
 
//     while (current != null && current.data != value) {
//       current = current.next;
//     }

 
//     if (current == null) {
//       print("Value $value not found in the list.");
//       return;
//     }

//     if (current.next != null) {
//       current.next!.prev = current.prev;
//     }
//     if (current.prev != null) {
//       current.prev!.next = current.next;
//     }
//   }
// }

// void main() {
//   DoublyLinkedList dll = DoublyLinkedList();


//   dll.append(10);
//   dll.append(20);
//   dll.append(30);
//   dll.append(40);

//   print("Original list:");
//   dll.display();


//   print("After deleting 20:");
//   dll.delete(20);
//   dll.display();


//   print("After deleting 10 (head node):");
//   dll.delete(10);
//   dll.display();
  

//   print("Trying to delete 100 :");
//   dll.delete(100);
// }
class Node{
  int data;
  Node?next;
  Node?prev;
  Node(this.data);
}
class DoublyLinkedList{
  Node?head;
  void append(int data){
    final newnode=Node(data);
    if(head==null){
      head=newnode;
      return;
    }
    Node?current=head;
    while(current?.next!=null){
      current=current?.next;
    }
    current?.next=newnode;
    newnode.prev=current;
  }
  void display(){
    Node?current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
  
  void delete(int key){
    if(head?.data==key){
      head=head?.next;
      if(head!=null){
        head?.prev=null;
      }
      return;
    }
      Node?current=head;
      while(current!=null&&current.data!=key){
        current=current.next;
      }
      if(current==null){
        return;
      }
      if(current.next!=null){
        current.next?.prev=current.prev;
      }
      if(current.prev!=null){
        current.prev?.next=current.next;
      }
    
  }
}

void main(){
  DoublyLinkedList list=DoublyLinkedList();
  list.append(1);
  list.append(2);
  list.append(3);
  list.delete(2);
  list.display();
}
