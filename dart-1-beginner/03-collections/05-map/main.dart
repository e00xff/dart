void main(List<String> args) {
  // Map = key value pair

  // Map people = {'dad': 'John', 'son': 'Tom', 'doughter': 'Ann'};
  
  Map<String, String> people = new Map<String, String>();
  people.putIfAbsent('dad', () => 'John');
  people.putIfAbsent('son', () => 'Tom');
  people.putIfAbsent('doughter', () => 'Ann');

  print(people);

  print('Peoples are ${people.keys}');
  print('Values are ${people.values}');

  print('Dad is ${people['dad']}');
  print('Son is ${people['son']}');
  print('Doughter is ${people['doughter']}');

}