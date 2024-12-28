// --------------------second smallest element-------------------------------------------------------------------
findlarge(List<int>num,int index,int ?long ,int ?sec){
  if(index==num.length){
    return sec;
  }
  int current=num[index];
  if(long==null||current<long){
    sec=long;
    long=current;
  }else if(current!=null&&(sec==null||current<sec)){
    sec=current;
  }
  return findlarge(num, index+1, long, sec);
}
findsec(List<int>num){
  if(num.length<2){
    print ("the list atlest contain 2 elements");
  }
  return findlarge(num, 0, null, null);
}
void main(){
  List<int>number=[1,2,3,4,5,6,7,8,9,10];
  int ?sec=findsec(number);
  if(sec!=null){
    print('The second smallest element is $sec');
  }else{
    print("no second large element in the list");
  }
}
// -------------------second largest element------------------------------------------------------------------------


findsece(List<int>nums,int index, int? long ,int? sec){
  if(index==nums.length){
    return sec;
  }
  int current=nums[index];
  if(long==null||current<long){
    sec=long;
    long=current;
  }else if(current!=null&&(sec==null||current<sec)){
    sec=current;
  }
  return findsece(nums, index+1, long, sec);
}
large(List<int>numss){
  return findsece(numss, 0, null, null);
}
// void main(){
//   List<int>numb=[1,2,3,4,5,6];
//  print(large(numb));
//
// -------------------------------------------------------------------------------------------------------------------------------------------------------------
// -------------------------------remove character--------------------------------------------------------------------------------------------------------------
removechar(String word, String char){
  if(word.isEmpty){
    return '';
  }
  String first=word[0];
  if(first==char){
    return removechar(word.substring(1), char);

  }else{
    return first+removechar(word.substring(1), char);
  }
}
// void main(){
//   print(removechar("Hello world", "l"));
// }
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------
// ----------------------------------longest subarray----------------------------------------------------------------------------------------------------------------
long(List<int>nums){
  find(List<int>nums,int index,List<int>current,List<int>long){
    if(index==nums.length){
      return(current.length>long.length)?current:long;
    }
    if(current.isEmpty||nums[index]>current.last){
      current.add(nums[index]);

    }else{
      if(current.length>long.length){
        long=List.from(current);
      }
      current=[nums[index]];
    }
    return find(nums, index+1, current, long);
  }
  return find(nums, 0, [], []);
}
// void main(){
//   List<int>arr=[1,2,3,4,5,6,7,2,3,49];
//   print(long(arr));
// }
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------