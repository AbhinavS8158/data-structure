
class Node{
  dynamic value;
  Node?left;
  Node?right;
  Node(this .value);
}
class BST{
  Node?root;

  void insert(value){
    Node newNode=Node(value);
    if(root==null){
      root=newNode;
    }else{
      insertNode(root ,newNode);
    }
  }
  insertNode(root,newNode){
    if(root.value>newNode.value){
      if(root.left==null){
        root.left=newNode;
      }else{
        insertNode(root.left, newNode);
      }
    }else{
      if(root.right==null){
        root.right=newNode;
      }else{
        insertNode(root.right, newNode);
      }
    }
  }
  inOrder(root){
    if(root!=null){
      inOrder(root.left);
      print(root.value);
      inOrder(root.right);
    }
  }
  levelOrder(root){
    List queue=[];
    queue.add(root);
    while(queue.isEmpty){
      var current=queue.removeAt(0);
      print(current.value);
      if(current.left!=null){
        queue.add(current.value);
      }
      if(current.right!=null){
        queue.add(current.value);
      }
    }
    
  }
  min(root){
    if(root.left==null){
      return root.value;
    }else{
      min(root.left);
    }
    }
    max(root){
      if(root.right==null){
        return root.value;

      }else{
        max(root.right);
      }
    }


delete(value){
  root=deleteNode(root,value);
}
deleteNode(root,value){
  if(root==null){
    return null;
  }
  if(value<root.value){
    root.left=deleteNode(root.left, value);

  }else if(value>root.value){
    root.right=deleteNode(root.right, value);
  }else{
    if(root.left==null && root.right==null){
      return null;

    }if(root.left== null){
      return root.right;
    }else if(root.right== null){
      return root.left;
    }
    root.value=min(root.right);
    root.right=deleteNode(root.right, value);
  }
  return root;
}
  }

void main(){
  BST bst=BST();
  bst.insert(10);
  bst.insert(8);
  bst.insert(11);
  bst.insert(7);
  bst.insert(9);
  bst.insert(4);
  bst.insert(13);
  bst.insert(6);
  bst.insert(21);
  bst.insert(1);
  bst.insert(15);
  bst.insert(2);
  bst.insert(32);
bst.inOrder(bst.root);
// bst.levelOrder(bst.root);
  // print(bst.min(bst.root));
 
//   bst.inOrder(bst.root);
//   print(".........")
// ;
//   bst.delete(3);
// bst.inOrder(bst.root);
}