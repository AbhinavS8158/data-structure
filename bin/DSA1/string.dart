//  ----------------string reverse----------------------
 

rev(String str){
  if(str.isEmpty){
    return "";
  }
  return rev(str.substring(1))+str[0];
}

// ---------------palindrome---------d---------------
palindrome(String str){
  if(str.length<=1){
    return true;
  }
  if(str[0]!=str[str.length-1]){
    return false;
  }
  return palindrome(str.substring(1,str.length-1));
}
// --------------------------------------------------------
tran(String input){
  StringBuffer result=StringBuffer();
  for(int i=0;i<input.length;i++){
    if(i%2==0){
      result.write(input[i].toLowerCase());
    }
    else{
      result.write(input[i].toUpperCase());
    }
  }
  return result.toString();
}
void main(){
  print(rev("abhinav"));
  print(palindrome("helleh"));
  print(tran("abhinav"));
}
