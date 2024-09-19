// String reverseEachWord(String input) {
//   return input.split(' ').map((word) => word.split('').reversed.join()).join(' ');
// }

// void main() {
//   print(reverseEachWord("Hello World"));  
// }

Map<String, int> countCharacters(String input) {
  Map<String, int> charCount = {};
  for (var char in input.split('')) {
    if (charCount.containsKey(char)) {
      charCount[char] = charCount[char]! + 1;
    } else {
      charCount[char] = 1;
    }
  }
  return charCount;
}


void main() {
  print(countCharacters("Hello World"));

}
