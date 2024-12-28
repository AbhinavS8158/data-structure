// binnarysearch(List<int>num,int start,int end,int target){
//   if(start>end){
//     return -3;
//   }
//   int mid=(start+end)~/2;
//   if(num[mid]==target){
//     return mid;
//   }
//   else if(num[mid]>target){
//     return binnarysearch(num, start,mid-1, target);
//   }
//   else{
//     return binnarysearch(num, mid+1, end, target);
//   }
// }
// void main(){
//   List<int>number=[1,3,4,5,6,7,8,9,10];
//   int target=2;
//   int result=binnarysearch(number, 0, number.length, target);
//   if(result!=-1){
//     print("the target found at the index $result");
//   }else{
//     print("not founded");
//   }
// }































// binnarysearch(List<int>numbers,int start, int end,int target){
//   if(start>end){
// return -1;
//   }
//   int mid=(start+end)~/2;
//   if(numbers[mid]==target){
//     return mid;
//   }else if(numbers[mid]>target){
//     return binnarysearch(numbers, start,mid-1, target);

//   }else{
//     return binnarysearch(numbers, mid+1, end, target);
//   }
// }
// void main(){
//   List<int>array=[1,2,3,4,5,6,7,8,9];
//   int target=6;
//   int result=binnarysearch(array, 0, array.length-1, target);
//   if(result!=-1){
//     print("the target at $result index");
//   }
//   else{
//     print("not found");
//   }
// // 




binnrysearch(List<int>num,int start,int end,int target){
  if(start>end){
    return -1;
  }
  int mid=(start+end)~/2;
  if(num[mid]==target){
    return mid;

  }else if(num[mid]>target){
    return binnrysearch(num, start, mid-1, target);
  }else{
    return binnrysearch(num, mid+1, end, target);
  }
}
void main(){
  List<int>num=[1,3,4,5,6,7,8,9,10,11,13,66];
  int target=60;
  int result=binnrysearch(num, 0,num.length, target);
  if(result!=-1){
    print("the target is found at the index of $result");
  }else{
    print("not found");
  }
}