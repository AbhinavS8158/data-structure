// class Node{
//   int data;
//   Node?next;
//   Node(this.data);
// }
// class Lindedlist{
//   Node?head;


//   void insert(int data){
//     final newnode =Node(data);
//     if(head==null){
//       head=newnode;

//     }else{
//       Node?current=head;
//       while(current?.next!=null){
//         current=current?.next;
//       }
//       current?.next=newnode;
//     }
//   }
//   void prepend(int data){
//     Node?newnode=Node(data);
//     newnode.next=head;
//     head=newnode;
//   }
//   void display(){
//     Node?current=head;
//     while(current!=null){
//       print(current.data);
//        current=current?.next;
//   }
//     }
   
// }
// void main(){
//   final list =Lindedlist();
//   list.insert(7);
//   list.prepend(2);
//   list.insert(9);
//   list.display();
// }