


// Factorial using recursion







// Factorial(int num){
//   if (num==1){
//     return 1;
//   }else{
//     return num*Factorial(num-1);
//   }
// }
// void main (){
//   print (Factorial(5));
// }













fibonnocii(int num){
  if(num==0){
    return 0;
  }else if(num==1){
  return 1;
  }else{
    return fibonnocii(num-1)+fibonnocii(num-2);
  }
}
void main(){
  print(fibonnocii(5));
}