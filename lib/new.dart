class Node{
  int data;
  Node?next;
  Node(this.data);
}
class Linkedlist{
  Node?head;
  
  
  void insert(int data){
    final newnode=Node(data);
    if (head==null){
      head=newnode;
      return;
    }
    Node?current=head;
    while(current?.next!=null){
      current=current?.next;
    }
    current?.next=newnode;
    
  }
  void prepend(int data){
    final newnode=Node(data);
    newnode.next=head;
    head=newnode;
  }
  void insertAt(int data,int pos){
    final newnode=Node(data);
    if(head==null){
    head=newnode;
    return;
    }
    Node?current=head;
    int index=0;
    while(current!=null&&index<pos-1){
      current=current.next;
      index++;
    }
    newnode.next=current?.next;
    current?.next=newnode;
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
  void mid(){
    if(head==null){
      return ;
    }
    Node?current=head;
    Node?fast=head;
    Node?slow=head;
    Node?pre=null;
    while(fast?.next!=null&&fast!=null){
      fast=fast.next?.next;
      pre=slow;
      slow=slow?.next;
    }
    if(slow!=null&&pre!=null){
      pre.next=slow.next;
    }
  }

  void display(){
    Node?current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
}
void main(){
  Linkedlist list=Linkedlist();
  Linkedlist list1=Linkedlist();
  list.insert(8);
  list.insert(9);
  list.prepend(7);
  list.insertAt(10, 3);
  list.delete(7);
  list.mid();

  list1.insert(1);
  list1.insert(2);
  list.display();
}