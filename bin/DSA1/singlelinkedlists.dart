// ---------------------------------------------singlylinkedlist--------------------------------------------------------
class Node{
  int data;
  Node?next; 
  Node(this. data);
}
class Linkedlist{
  Node?head;
  // -----------------------------------------insert--------------------------------------------------------------------
  void insert(int data){

    if (head==null){
      head=Node(data);
    }else{
      Node?cuurent=head;
      while(cuurent?.next!=null){
        cuurent=cuurent?.next;

      }
      cuurent?.next=Node(data);
    }
  }
  // --------------------------------------------delete mid--------------------------------------------------------------
  void mid(){
    if(head==null){
      return ;
    }
    Node?current=head;
    Node?fast=head;
    Node?slow=head;
    Node?pre=null;

    while(fast!=null&&fast.next!=null){
      fast=fast.next?.next;
      pre=slow;
      slow=slow?.next;
    }
    if(pre!=null&&slow!=null){
      pre.next=slow.next;
    }
  }
  // ------------------------------------------------InsertAt-----------------------------------------------------------
  void insertAt(int data, int position){
    final newnode=Node(data);
    if(head==null){
      newnode.next=head;
      head=newnode;
    }
    Node?current=head;
    int index=0;
      if(position==0){
       newnode.next=head;
       head=newnode;
       return ;
     }
     if(position==0){
       newnode.next=head;
       head=newnode;
       return ;
     }
    while(current !=null&& index<position-2){
      current=current.next;
      index++;

    }
    newnode.next=current?.next;
    current?.next=newnode;
    
  }
  // -------------------------------------------display-----------------------------------------------------------------
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
  list.insert(6);
  list.insert(4);
  list.insert(3);
  list.insert(8);
  list.insert(10);
  list.display();
  list.mid();
  print("==============================================");
  list.display();
}
