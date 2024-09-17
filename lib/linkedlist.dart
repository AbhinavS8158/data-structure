class Node{
  int data;
  Node?next;
  Node(this.data);

}
class Linkedlist{
  Node?head;
  void insert(data){
    final newnode = Node(data);
    if(head==null){
       head=newnode;
    }else{
      Node?current=head;
      while(current?.next!=null){
        current=current?.next;
      }
      current?.next=newnode;
    }
  }
 void prepend(int data){
  final newnode= Node(data);
  newnode.next= head;
  head=newnode;
 }
 void insertAt(int data, int position){
  final newnode=Node(data);
  if (newnode==0){
   newnode.next=head;
   head=newnode;
  }
  Node?current=head;
  int index=0;
  while(current!=null&&index<position-1){
    current=current.next;
    index++;
  }
newnode.next= current?.next;
current?.next=newnode;
 }
  void display(){
    Node?cuurent=head;
    while(cuurent!=null){
      print(cuurent.data);
      cuurent=cuurent.next;
    }
  }
void delete(int key){
  if(head?.data==key){
    head=head?.next;
  }
Node?current=head;
while(current?.next!=null){
if(current?.next?.data==key){
  current?.next=current.next?.next;
}
current=current?.next;
}
}
}
void main (){
  Linkedlist list =Linkedlist();
  list.insert(3);
  list.insert(5);
  list.insert(9);
   list.insertAt(10, 0);
  // list.prepend(112);

  list.display();
  print ("after delete");
  list.delete(5);
 
  list.display();
}