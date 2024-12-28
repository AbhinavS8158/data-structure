

class Node{
  dynamic value;
  Node?left;
  Node?right;
  Node(this.value);
}

class BTS{
  Node?root;

  isEmpty(){
    return root==null;
  }

  insert(value){
    Node newNode=Node(value);
    if(isEmpty()){
      root=newNode;
    }else{
      insertNode(root,newNode);
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

  search(root,value){
    if(root==null){
      return false;
    }else{
      if(value==root.value){
      return true;
    }else if(value<root.value){
      return search(root.left, value);
    }else{
      return search(root.right, value);
    }
    }
  }
//-------------DFS------------
  preOrder(root){
    if(root!=null){
      print('${root.value}');
      preOrder(root.left);
      preOrder(root.right);
    }
  }

  inOrder(root){
    if(root != null){
      inOrder(root.left);
      print('${root.value}');
      inOrder(root.right);
    }
  }

  postOrder(root){
    if(root !=null){
      postOrder(root.left);
      postOrder(root.right);
      print('${root.value}');
    }
  }
//-----------BFS----------------

levelOrder(){
  List queue=[];
  queue.add(root);

  while(queue.isNotEmpty){
    var current=queue.removeAt(0);
    print('${current.value}');
    if(current.left != null){
      queue.add(current.left);
    }
    if(current.right != null){
      queue.add(current.right);
    }
  }
}

//------------------------MAX and MIN-------------------------

min(root){
  if(root.left==null){
    return root.value;
  }else{
    return min(root.left);
  }
}

max(root){
  if(root.right==null){
    return root.value;
  }else{
    return max(root.right);
  }
}

//---------------------delete----------------------

delete(value){
  root =deleteNode(root,value);
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
    if(root.left ==null && root.right==null){
      return null;
    }
    if(root.left ==null){
      return root.right;
    }
    else if(root.right==null){
      return root.left;
    }
    root.value=min(root.right);
    root.right=deleteNode(root.right, value);
  }
  return root;
}

}

void main(){
  BTS bts=BTS();
  bts.insert(10);
  bts.insert(5);
  bts.insert(15);
  bts.insert(3);
    print(bts.inOrder(bts.root));

  // bts.insert(7);
  // print(bts.search(bts.root, 10));
  // bts.preOrder(bts.root);
  // bts.inOrder(bts.root);
  // bts.postOrder(bts.root);
  bts.delete(10);
  bts.levelOrder();
  // print(bts.min(bts.root));
  // print(bts.max(bts.root));
}
