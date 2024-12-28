class Queue{
  List<int>queue=[];

  enqueue(int data){
    queue.add(data);
  }
  dequeue(){
    if(queue.isEmpty){
      print("queue is empty");
    }else{
      queue.removeAt(0);
    }
  }
  void display(){
    if(queue.isEmpty){
      print("queue is empty");
    }else{
    for(int i=0; i<queue.length;i++){
      print(queue[i]);
    }
    }
  }
}
void main(){
  Queue q=Queue();
  q.enqueue(6);
  q.enqueue(5);
  q.enqueue(2);
  q.display();
  print("--------------------");
  q.dequeue();
  q.display();
}