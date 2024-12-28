binarysearch(List<int>numbers, int start,int end,int target){
if(start>end){
  return -1;
}
int mid= (start+end )~/2;
if(numbers[mid]==target){
  return  mid;
}else if(numbers[mid]>target){
  return binarysearch(numbers,start,mid-1,target);
}
else{
  return binarysearch(numbers,mid+1,end,target);
}
}



void main(){
  List<int>arr=[1,2,3,4,5,6,8];
  int target=6;
  int result=binarysearch(arr, 0, arr.length-1, target);
   if(result!=-1){
    print("target found at index:$result");
   }else{
    print("target not founded");
   }






// int linearSearch(List<int> arr, int target) {
//   for (int i = 0; i < arr.length; i++) {
//     if (arr[i] == target) {
//       return i; 
//     }
//   }
//   return -1; 
// }
// void main(){
  // int result1 = linearSearch(arr, target);
  // if (result1 != -1) {
  //   print("Element found at index $result1");
  // } else {
  //   print("Element not found in the list");
  // }
// }

}

