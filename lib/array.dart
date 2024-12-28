 findLargest(List<int> numbers, int length) {
  if (length == 1) {
    return numbers[0];
  }
  int largestInRest = findLargest(numbers, length - 1);
  return (numbers[length - 1] > largestInRest) ? numbers[length- 1] : largestInRest;
}

sum(List<int>num,int length){
  if(length<=0){
    return 0;
  }else{
    return num[length-1]+sum(num, length-1);
  }
}




void main() {
  List<int> array = [3, 5, 1, 9, 7, 2];
  print(findLargest(array, array.length));  
  print(sum(array,array.length));
}
