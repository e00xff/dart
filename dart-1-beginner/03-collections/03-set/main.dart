void main(List<String> args) {
  // set = unordered, dont contain dublicates
  Set<int> numbers = new Set <int>();
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(1); // added twice
  print(numbers);
}