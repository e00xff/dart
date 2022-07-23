void main(List<String> args) {
  List test = [1,2,3,4];

  print('Length = ${test.length}'); // how many
  print('First item is ${test[0]}'); // zero based index

  print(test.elementAt(3));


  List things = [];
  things.add(1);
  things.add('Cat');
  things.add(true);
  print('Things: ${things}');


  List<int> numbers = [];
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  // numbers.add('Dog');
  print('Numbers: ${numbers}');


  var list = <int>[];
  list.add(9);
  list.add(0);
  list.add(7);
  print('Numbers: ${list}');

}