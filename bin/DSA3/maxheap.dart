class Maxheap{
  List<int>heap=[];
  void insert(int value){
    heap.add(value);
    heapfyup(heap.length-1);
  }
  extractmax(){
    if(heap.isEmpty){
      return;
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
    if(index==0){
      return;
    }
    int parentIndex=(2*index-1)~/2;
    if(index>0 && heap[index]>heap[parentIndex]){
      swap(parentIndex,index);
      heapfyup(parentIndex);
    }
  }
  heapfydown(int index){
    int leftIndex=(2*index+1);
    int rightIndex=(2*index+2);
    int largest=index;
    if(leftIndex<heap.length && heap[leftIndex]>heap[largest]){
      largest=leftIndex;
    }
    if(rightIndex<heap.length && heap[rightIndex]>heap[largest]){
      largest=rightIndex;
    }
    if(largest!=index){
      swap(largest,index);
      heapfydown(0);
    }
  }
  swap(int index1,int index2){
    int temp=heap[index1];
    heap[index1]=heap[index2];
    heap[index2]=temp;
  }
  List<int>heapsort(){
    List<int>sorted=[];
    while(heap.isNotEmpty){
      sorted.add(extractmax()!);
    }
    return sorted.reversed.toList();
  }
  void display(){
    print(heap);
  }
}
void main(){
  Maxheap h=Maxheap();
  h.insert(8);
  h.insert(91);
  h.insert(22);
  h.insert(3);
  h.insert(14);
   
 print(h.extractmax());
    h.display();
    
  List<int>sorted=h.heapsort();
  print(sorted);
 
 
}