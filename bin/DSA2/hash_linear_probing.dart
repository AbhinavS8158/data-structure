class Table {
  List<dynamic> table;
  List<String?> keys;
  int size;

  Table(this.size)
      : table = List.filled(size, null),
        keys = List.filled(size, null);

  int hash(String key) {
    int total = 0;
    for (int i = 0; i < key.length; i++) {
      total += key.codeUnitAt(i);
    }
    return total % size;
  }

  int linearProbe(int index) {
    int newIndex = index;
    while (table[newIndex] != null) {
      newIndex = (newIndex + 1) % size;
    }
    return newIndex;
  }

  void set(String key, dynamic value) {
    int index = hash(key);

    if (table[index] != null && keys[index] != key) {
      index = linearProbe(index);
    }

    table[index] = value;
    keys[index] = key;
  }

  dynamic get(String key) {
    int index = hash(key);

    while (table[index] != null) {
      if (keys[index] == key) {
        print(table[index]);
        return table[index];
      }
      index = (index + 1) % size;
    }
    print("Key not found");
    return null;
  }

  void remove(String key) {
    int index = hash(key);

    while (table[index] != null) {
      if (keys[index] == key) {
        table[index] = null;
        keys[index] = null;
        print("Key '$key' removed");
        return;
      }
      index = (index + 1) % size;
    }
    print("Key not found for removal");
  }

  void display() {
    for (int i = 0; i < size; i++) {
      if (table[i] != null) {
        print("Index $i: Key = ${keys[i]}, Value = ${table[i]}");
      }
    }
  }
}

void main() {
  Table table = Table(5);

  table.set("hello", "world");
  table.set("foo", "bar");
  table.set("test", "value");
  table.set("collision", "resolve");

  table.display();

  table.remove("foo");
  table.display();

  table.get("test");
  table.get("foo");
}
