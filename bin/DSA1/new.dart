// List<int> findLongestIncreasingSubarrayRecursive(List<int> arr, int index, List<int> currentSubarray, List<int> longestSubarray) {
//   if (index == arr.length) {
//     return (currentSubarray.length > longestSubarray.length) ? currentSubarray : longestSubarray;
//   }

//   if (currentSubarray.isEmpty || arr[index] > currentSubarray.last) {
//     currentSubarray.add(arr[index]); 
//   } else {
  
//     if (currentSubarray.length > longestSubarray.length) {
//       longestSubarray = List.from(currentSubarray); 
//     }
//     currentSubarray = [arr[index]]; 
//   }

//   return findLongestIncreasingSubarrayRecursive(arr, index + 1, currentSubarray, longestSubarray);
// }

// List<int> findLongestIncreasingSubarray(List<int> arr) {
//   return findLongestIncreasingSubarrayRecursive(arr, 0, [], []);
// }

// void main() {
//   List<int> arr = [10, 22, 25, 30, 9, 33, 35, 40, 43, 44, 21, 50, 41, 60, 80];
//   List<int> result = findLongestIncreasingSubarray(arr);
//   print("The longest increasing subarray is: $result");
// }
