void main(List<String> args) {
  // Numbers
  var age = 36;

  // Int
  int people = 6;

  // Double
  double temp = 37.05;

  // Parse an int
  int test = int.parse('12');
  print(test);

  int err = int.parse('12.09', onError: (source) => 0);
  print('err = ${err}');


  // Math
  int dogYears = 7;
  int dogAge = age * dogYears;
  print('Your age in dog years is: ${dogAge}');
}