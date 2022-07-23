void main(List<String> args) {

  List people = ['John', 'Ann', 'Jessie'];
  print(people);

  // First way
  for(int i = 0; i < people.length; i++) {
    print('Person at ${i} is ${people[i]}');
  }

  // Second way
  people.forEach((person) {
    print(person);
  });

}