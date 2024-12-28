bubblesort(List<int>arr){
  int length=arr.length;
  bool swapped;
  for(int i=0;i<length;i++){
    swapped=false;
    for(int j=0;j<length-i-1;j++){
      if(arr[j]>arr[j+1]){
        int temp=arr[j];
        arr[j]=arr[j+1];
        arr[j+1]=temp;
        swapped=true;
      }
    }
    if(!swapped)
    break;
  }
}
void main(){
  List<int>arr=[4,3,2,1,7];
  bubblesort(arr);
  print(arr);
}






