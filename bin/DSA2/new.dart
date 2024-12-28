void main() {
  // Creating a hash table (Map)
  Map<String, int> hashTable = {};

  // Adding key-value pairs
  hashTable['apple'] = 1;
  hashTable['banana'] = 2;
  hashTable['cherry'] = 3;

  // Accessing values using keys
  print("Value for 'apple': ${hashTable['apple']}"); // Output: 1
  print("Value for 'banana': ${hashTable['banana']}"); // Output: 2

  // Checking if a key exists
  if (hashTable.containsKey('cherry')) {
    print("Key 'cherry' exists in the hash table.");
  }

  // Removing a key-value pair
  hashTable.remove('banana');
  print("After removing 'banana': $hashTable");

  // Iterating over the hash table
  hashTable.forEach((key, value) {
    print("Key: $key, Value: $value");
  });

  // Checking the size of the hash table
  print("Hash table size: ${hashTable.length}");

  // Clearing all entries
  hashTable.clear();
  print("Hash table after clearing: $hashTable"); // Output: {}
}

