void main(List<String> args) {
  () { print('hi'); };

  List people = ['Levan', 'John', 'Ann'];
  
  people.forEach(print);
  
  print('------');

  people.forEach((person) {
    print(person);
  });

  print('------');


  people.where((person) {
    switch(person) {
      case 'Chris':
        return true;
      case 'Bryan':
        return true;
      case 'Heather':
        return false;
    }

    return true;
  }).forEach(print);
}