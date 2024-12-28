// sumlist(List<int>numbers,int length){
//   if(length<=0){
//     return 0;
//   }else{
//     return numbers[length-1]+sumlist(numbers, length-1);
//   }
// }
// void main(){
//   List<int>numbers=[1,3,4,5,];
//   print(sumlist(numbers, numbers.length));
// }
// sum(List<int>num,int length){
//   if(length<=0){
//     return 0;
//   }else{
//     return num[length-1]+sum(num, length-1);
//   }
// }
// void main(){
//   List<int>arr=[1,2,3,4,5,6,7];
//   print(sum(arr, arr.length));
// }




// sum(List<int>num,int length){
//   if(length<=0){
//     return 0;
//   }else{
//     return num[length-1]+sum(num, length-1);
//   }
// }
// powr(int num){
//   if(num==0){
//     return 1;
//   }else{
//     return 2*powr(num-1);

//   }
// }
// void main(){
//   List<int>arr=[1,2,3,4,5];
//   print(sum(arr, arr.length));
//   print(powr(5));
// }
sum(List<int>num,int length){
  if(length<=0){
    return 0;
  }else{
     return num[length-1]+sum(num,length-1);
  }
 
}
void main(){
  List<int>num=[1,2,3,4,5];
  print(sum(num,num.length));
}