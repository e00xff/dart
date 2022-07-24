void main(List<String> args) {

  List<int> numbers = [];
  numbers.addAll([1,2,3,4]);
  print('Numbers: ${numbers}');

  List<String> strings = [];
  strings.addAll(['a','b','c']);
  print('Strings: ${strings}');


  add<int>(1, 2);
  add<double>(1.0, 2.4);
  // add<String>('a', 'b');

  addNumbers<int>(1, 2);
  addNumbers<double>(1.0, 2.4);
  // addNumbers<String>('a', 'b');
}


// Simple example 
void add<T extends num>(T a, T b) {
  print(a + b);
}

// Complex example
void addNumbers<T extends num>(T a, T b) {
  print(a + b); 
}