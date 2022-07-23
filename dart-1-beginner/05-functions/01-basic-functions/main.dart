void main(List<String> args) {
  String name = 'Levan';
  result();
  sayHello(name);

  print('Your age in dog year is ${dogYears(43)}');

  int wall1 = squareFeet(10, 10);
  int wall2 = squareFeet(10, 20);
  int wall3 = squareFeet(10, 20);
  int wall4 = squareFeet(10, 20);
  int ceiling = squareFeet(20, 10);

  double paint = paintNeeded(wall1, wall2, wall3, wall4, ceiling);
  print('You ${paint} gallons of paint');

  // print('Square feet is ${squareFeet(10, 20)}');
  
}

void result() {
  print('Hi all');
}

void sayHello(String name) {
  print('Hi ${name}');
}

int dogYears(int age) {
  return age * 7;
}

int squareFeet(int width, int length) {
  return width * length;
}

double paintNeeded(int wall1, int wall2, int wall3, int wall4, int ceiling) {
  int footage = wall1 + wall2 + wall3 + wall4;
  return footage / 30 ;
}