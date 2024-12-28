

class Maxheap{
  List<int>heap=[];


  void insert(value){
    heap.add(value);
    heapfyup(heap.length-1);

  }

  extractmax(){
    if(heap.isEmpty){
      return null;
    }
    int root=heap[0];
    if(heap.length==1){
      return heap.removeLast();
    }
    heap[0]=heap.removeLast();
    heapfydown(0);
    return root;

  }

  heapfyup(int index){
    int parentIndex=(index-1)~/2;

    if(index>0 && heap[index]>heap[parentIndex]){
      swap(parentIndex,index);
      heapfyup(parentIndex);
    }
  }
  heapfydown(int index){
    int leftchild=2*index+1;
    int rightchild =2*index+2;
    int largest=index;

    if(leftchild<heap.length&& heap[leftchild]>heap[largest]){
      largest=leftchild;

    }
    if(rightchild<heap.length && heap[rightchild]>heap[largest]){
      largest=rightchild;
    }
    if(largest!=index){
      swap(largest,index);
      heapfydown(largest);
    }

  }
  void swap(int index1,int index2){
    int temp=heap[index1];
    heap[index1]=heap[index2];
    heap[index2]=temp;
  }
  List<int>heapsort(){
    List<int>sorted=[];
    while(heap.isNotEmpty){
      sorted.add(extractmax()!);
    }
    return sorted;
  }
  void printheap(){
    print(heap);
  }
}
void main(){
  Maxheap maxheap =Maxheap();
  maxheap.insert(10);
  maxheap.insert(15);
  maxheap.insert(16);
  maxheap.insert(17);
  maxheap.insert(18);
  maxheap.printheap();  
 List<int>sorted=maxheap.heapsort();
 print(sorted);
}                              