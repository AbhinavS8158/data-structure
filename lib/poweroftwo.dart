poweroftwo(int n){
  if(n==0){
    return 1;
  }else{
    return 2*poweroftwo(n-1);
  }
}
void main(){
  print(poweroftwo(5));
}