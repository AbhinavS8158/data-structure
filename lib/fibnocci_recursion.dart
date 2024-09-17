Fibnocci(int num){
  if(num==0){
    return 0;
  }else if(num==1){
    return 1;
  }else{
    return Fibnocci(num-1)+Fibnocci(num-2);
  }
}
void main(){
  print(Fibnocci(5));
}