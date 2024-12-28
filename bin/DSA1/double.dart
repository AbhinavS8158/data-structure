// ---------------------------------------doublylinkedlist--------------------------------------------------------------




class Node{
  int data;
  Node?next;
  Node?prev;
  Node(this.data);
}
class Doublelikedlist{
  Node?head;
  Node?tail;
  // ----------------------------------------insert---------------------------------------------------------------------
  void insert(int data){
    final newnode=Node(data);
    if(head==null){
      head=newnode;
      tail=newnode;
    }
    else{
      tail?.next=newnode;
      newnode.prev=tail;
      tail=newnode;
    }
  }
  // ---------------------------------------prepend---------------------------------------------------------------------
  void prepend(int data){
    final newnode=Node(data);
    if(head==null){
      head=newnode;
      tail=newnode;
    }else{
      head?.prev=newnode;
      newnode.next=head;
    }
    
  }
  // ---------------------------------------delete----------------------------------------------------------------------
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
  // -----------------------------------display-------------------------------------------------------------------------
    void display(){
      Node?current=head;
      while(current!=null){
        print(current.data);
        current=current.next;
      }
    }
    void reverse(){
      Node?current=tail;
      while(current!=null){
        print(current.data);

        current=current.prev;
      }
    }
  }


void main (){
  Doublelikedlist list =Doublelikedlist();
  list.insert(7);
  list.insert(5);
  list.insert(9);
  list.insert(8);
  list.reverse();
  list.delete(9);
  print("-----------------------------------");
  list.display();
}
