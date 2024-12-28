class Node{
  int data;
  Node?next;
  Node(this.data);
}
class Linkedlist{
  Node?head;

  void insert(int data){
    final newnode= Node(data);
    if(head==null){
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
  merge(Linkedlist list1,Linkedlist list2){
    Linkedlist mergelist=Linkedlist();
    Node?current1=list1.head;
    Node?current2=list2.head;


    while(current1!=null){
      mergelist.insert(current1.data);
      current1=current1.next;
    }
    while(current2!=null){
      mergelist.insert(current2.data);
      current2=current2.next;
    }
    return mergelist;
  }
  remdup(){
    Node?current=head;
    while(current!=null&&current.next!=null){
      Node?runner=current;
      while(runner?.next!=null){
        if(runner?.next?.data==current.data){
          runner?.next=runner.next?.next;
        }else{
          runner=runner?.next;
        }
      }
      current=current.next;
    }
  }
  void insertAt(int data, int pos){
    final newnode=Node(data);
  if(head==null){
    head=newnode;
    return;
  }
  Node?current=head;
  int index=0;
  while(current!=null&& index<pos-1){
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
      return null;
    }
    Node?current=head;
    Node?fast=head;
    Node?slow=head;
    Node?prev=null;
    while(fast!=null&& fast.next!=null){
      fast=fast.next?.next;
      prev=slow;
      slow=slow?.next;
    }
    if(slow!=null&& prev!=null){
      prev.next=slow.next;



      print ("mid of linkedlist");
      print(slow.data);
      print("--------------------------");
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
  list.insert(7);
  list.insert(9);
  list.insert(8);
  list.prepend(6);
  list.insert(7);
  list.insertAt(1, 1);
  list.display();
  print("---------------");
  list.remdup();
  list.display();

  print("------------------------------------");

  list1.insert(1);
  list1.insert(2);
  Linkedlist mergelist=Linkedlist().merge(list, list1);
  mergelist.display();
  // list.delete(6);
  // list.display();
  // list.mid();
  // list.display();
}