

class Table{
  List<dynamic>table;
  List<String?>keys;
  int size;
  Table(this.size):
  table=List.filled(size, null),
  keys=List.filled(size, null);

  hash(String key){
    int total=0;
    for(int i=0; i<key.length;i++){
      total=total+key.codeUnitAt(i);
    }
    return total%size;
  }
  linearProbe(int index){
    int newIndex=index;
    while(table[newIndex]!=null){
      newIndex=(newIndex+1)%size;
    }
    return newIndex;
  }
  void set(String key,dynamic value){
    int index=hash(key);
    if(table[index]!=null && keys[index] != key){
      index=linearProbe(index);
    }
    table[index]=value;
    keys[index]=key;
  }
  void get(String key,dynamic value){
    int index=hash(key);
    while(table[index]!=null){
      if(keys[index]==key){
        print(table[index]);
      }
      index=(index+1)% size;
    }
  }
  display(){
    for(int i=0; i<size; i++){
      if(table[i]!=null){
        print("index:$i,keys:${keys[i]},values:${table[i]}");
      }
    }
  }
}
void main(){
  Table tb =Table(11);
  tb.set("addf", 6);
  tb.set("adfhk", 5);
  tb.display();
}