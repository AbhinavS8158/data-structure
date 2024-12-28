class Stackarray{
  List<int>stack=[];


  void push(int data){
    stack.add(data);
  }

  pop(){
    if(stack.isEmpty){
      print("empty stack");

    }
    return stack.removeLast();
  }
  void display(){
    if(stack.isEmpty){
      print("stack empty");
    }
    for(int i=stack.length-1;i>=0;i--){
      print(stack[i]);
    }
  }
  void midremove(){
    int mid=stack.length~/2;
    List<int>temp=[];
    int count=0;
    while(stack.isNotEmpty){
      int current=pop();
      if(count!=mid){
        temp.add(current);
      }
      count++;
    }
    while(temp.isNotEmpty){
      push(temp.removeLast());
    }
  }
void reverse(){
  List<int>temp=[];
  while(stack.isNotEmpty){
    temp.add(pop());
  }
  stack=temp;
}      
}
void main(){
  Stackarray st=Stackarray();
  st.push(6);
  st.push(5);
  st.push(9);
  st.push(1);
  st.push(4);
  // st.pop();
  st.midremove();
  st.reverse();
  st.display();
}