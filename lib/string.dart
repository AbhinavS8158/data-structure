String reverseEachWord(String input) {
  return input.split(' ').map((word) => word.split('').reversed.join()).join(' ');
}

void main() {
  print(reverseEachWord("Hello World"));  
}
