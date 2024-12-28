

mergesort(List<int>arr){
  if(arr.length<2){
    return arr;
  }
  int mid=arr.length~/2;
  List<int>left=arr.sublist(0,mid);
  List<int>right= arr.sublist(mid);
  return merge(mergesort(left),mergesort(right));
}
merge(List<int>left,List<int>right){
  List<int>sort=[];
  while(right.isNotEmpty && left.isNotEmpty){
    if(right[0]<left[0]){
      sort.add(right.removeAt(0));
    }else{
      sort.add(left.removeAt(0));
    }
  }
  return[...sort,...left,...right];
}
void main(){
  List<int>arr=[7,4,1,8,9,5,2,6,3];
  print(mergesort(arr));
}