

class Node{
  dynamic value;
  Node?right;
  Node?left;
  Node(this.value);
}
class Bt{
  Node?root;

  void insert(value){
    root??=Node(value);
  }
  void insertLeft(parent,value){
    if(parent!=null&& parent.left==null){
      parent.left=Node(value);

    }
  }
  void insertRight(parent,value){
    if(parent!=null && parent.right==null){
      parent.right=Node(value);
    }
  }
  void inOrder(root){
    if(root!=null){
      inOrder(root.left);
      print(root.value);
      inOrder(root.right);
    }
  }
 bool isIdentical(Node?root1,Node?root2){
  if(root1==null && root2==null)return true;
  if(root1==null|| root2==null)return false;
  return (root1.value==root2.value &&                        
  isIdentical(root1.left, root2.left)&&
  isIdentical(root1.right, root2.right));
 }
}
void main(){
  Bt bt1=Bt();
 bt1.insert(7);
  bt1.insertLeft(bt1.root, 3);
  bt1.insertRight(bt1.root, 45);
  bt1.insertLeft(bt1.root!.left, 65);
  bt1.insertRight(bt1.root!.left, 33);


  Bt bt2 = Bt();
  bt2.insert(7);
  bt2.insertLeft(bt2.root, 3);
  bt2.insertRight(bt2.root, 4);
  bt2.insertLeft(bt2.root!.left, 65);
  bt2.insertRight(bt2.root!.left, 33);

   bool identical = bt1.isIdentical(bt1.root, bt2.root);
  print(identical ? "The binary trees are identical" : "The binary trees are not identical");
}