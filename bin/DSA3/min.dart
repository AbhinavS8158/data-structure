class Minheap{
  List<int>heap=[];

  void insert(value){
    heap.add(value);
    heapfyup(heap.length-1);

  }

  extractmin(){
    if(heap.isEmpty){
      return;
    }
    int root=heap[0];
    heap[0]=heap.removeLast();
    heapfydown(0);
    return root;
  }

  heapfyup(int index){
    int parentIndex=(index-1)~/2;

    if(index>0 && heap[index]<heap[parentIndex]){
      swap(index,parentIndex);
      heapfyup(parentIndex);

    }
  }
  heapfydown(int index){
    int leftchild=2* index+1;
    int rightchild=2* index+2;
    int smallest=index;

    if(leftchild>heap.length && heap[leftchild]>heap[smallest]){
      smallest=index;

    }
    if(rightchild>heap.length && heap[rightchild]>heap[smallest]){
      smallest=index;
    }
    if(smallest!=index){
      swap(smallest,index);
      heapfydown(smallest);
    }

  }
  void swap(int index1,int index2){
    int temp=heap[index1];
    heap[index1]=heap[index2];
    heap[index2]=temp;
  }
  void printheap(){
    print(heap);

  }
}
void main(){
  Minheap minheap=Minheap();
  minheap.insert(6);
  minheap.insert(7);
  minheap.insert(2);
  minheap.insert(9);
  minheap.insert(12);
  minheap.printheap();
}