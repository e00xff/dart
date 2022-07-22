void main(List<String> args) {

  String firstName = 'Levan';
  String lastName = 'Doe';
  print('Full name is ${firstName} ${lastName}');

  // get a substring
  String first = firstName.substring(0,3);
  print('firstName substring is: ${first}');

  String last = lastName.substring(0,3);
  print('lastName substring is: ${last}');

  // get the index of a string
  int index = firstName.indexOf('eva');
  print('index position is: ${index}');

  String trimedLastName = lastName.substring(index).trim();
  print('Trimed lastName is: ${trimedLastName}');

  // Length
  print('Last name lenth is: ${lastName.length}');

  // Contains
  print('firstName contains: ${firstName.contains('eva')}');

  // Create a list
  List parts = firstName.split('e');
  print(parts);
  print(parts[0]);
  print(parts[1]);
}