class Queue{
  List stack1=[];
  List stack2=[];

  void enqueue(int data){
    stack1.add(data);
  }

int? dequeue(){
if(stack1.isEmpty && stack2.isEmpty){
  return null;
}

if(stack2.isEmpty){
  while(stack1.isNotEmpty){
    stack2.add(stack1.removeLast());
  }
}
return stack2.isNotEmpty?stack2.removeLast():null;
}

void display(){
  if(stack2.isNotEmpty){
    print([...stack2.reversed,...stack1]);
  }else{
    print(stack1);
  }
}

int? peek(){
if(stack1.isEmpty && stack2.isEmpty){
  return null;
}
if(stack2.isEmpty){
  while(stack1.isNotEmpty){
    stack2.add(stack1.removeLast());
  }
}
return stack2.isNotEmpty?stack2.last:null;
}
}

 void main(){
  Queue q=Queue();

  q.enqueue(10);
  q.enqueue(11);
  q.enqueue(12);
  q.enqueue(13);
  q.enqueue(14);
  q.display();
  
  print('queue after dequeue');
  print('dequeue element ${q.dequeue()}');
  q.display();

  q.enqueue(100);
  q.display();
 }

