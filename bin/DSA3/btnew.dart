class Node{
  dynamic value;
  Node?left;
  Node?right;
  Node(this.value);
}
  class BT{
    Node?root;
    void insert(value){
      root??=Node(value);
    }
    void insertLeft(Node?parent,value){
      if(parent!=null&& parent.left==null){
        parent.left=Node(value);
      }
    }
    void insertRight(Node?parent,value){
      if(parent!=null&& parent.right==null){
        parent.right=Node(value);
      }
    }
  inOrder(Node?root){
    if(root!=null){
      inOrder(root.left);
      print(root.value);
      inOrder(root.right);
    }
  }
}
void main(){
  BT bt=BT();
  bt.insert(7);
  bt.insertLeft(bt.root, 3);
  bt.insertRight(bt.root, 45);
  bt.insertLeft(bt.root!.left, 65);
  bt.insertRight(bt.root!.left, 33);
  bt.inOrder(bt.root);
}