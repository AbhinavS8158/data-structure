class Node{
  dynamic value;
  Node?left;
  Node?right;
  Node(this.value);
}
class BT{
  Node?root;

  void insertroot(value){
    root??=Node(value);
  }
  void insertLeft(value,parent){
    if(parent!=null&& parent.left==null){
      parent.left=Node(value);
    }
  }
  void insertRight(value,parent){
    if(parent!=null&& parent.right==null){
      parent.right=Node(value);
    }
  }
  inOreder(root){
    if(root!=null){
      inOreder(root.left);
      print(root.value);
      inOreder(root.right);
    }
  }
}
void main(){
  BT bt=BT();
  bt.insertroot(2);
  bt.insertLeft(3,bt.root);
  bt.insertRight(4, bt.root);
  bt.insertLeft(55,bt.root!.left);
  bt.insertLeft(34, bt.root!.right);
  bt.inOreder(bt.root);
}