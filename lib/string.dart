// String reverseEachWord(String input) {
//   return input.split(' ').map((word) => word.split('').reversed.join()).join(' ');
// }

// void main() {
//   print(reverseEachWord("Hello World"));  
// }





// Map<String, int> count(String input) {
//   Map<String, int> charCount = {};
//   for (var char in input.split('')) {
//     if (charCount.containsKey(char)) {
//       charCount[char] = charCount[char]! + 1;
//     } else {
//       charCount[char] = 1;
//     }
//   }
//   return charCount;
// }


// void main() {
//   print(count("Hello World"));

// }
// String reverse(String Abh){
//   return Abh.split(' ').map((word) =>word.split('').reversed.join() ).join(' ');
// }
// void main(){
//   print (reverse("Abhinav"));
// // }
// String reverseWord(String word) {
//   if (word.isEmpty) {
//     return word;
//   } else {
//     return reverseWord(word.substring(1)) + word[0];
//   }
// }

// void main() {
//   String word = "Dart";
//   String reversed = reverseWord(word);
//   print(reversed);  // Output: traD
// }
// reverse(String word ){
//   if(word.isEmpty){
//     return word;
//   }else{
//     return reverse(word.substring(1))+word[0];
//   }
// }
// void main(){
 
//   print(reverse("Abhinav"));
// }
reverse(String word){
  if(word.isEmpty){
    return word;
  }else{
    return reverse(word.substring(1))+word[0];
  }
}
void main(){
  print(reverse("dart"));
}