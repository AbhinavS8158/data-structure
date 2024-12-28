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
  void insertLeft(root,value){
    if(root!=null&& root.left==null){
      root.left=Node(value);
    }
  }
  void insertRight(root,value){
    if(root!=null && root.right==null){
      root.right=Node(value);
    }
  }
}
void main(){
  BT bt=BT();
  bt.insert(4);
  bt.insertLeft(bt.root, 7);
  bt.insertRight(bt.root, 5);
}
