void main(List<String> args) {
  int age = 43;

  var dogYears = calcYears;
  print('Your age in dog years is ${dogYears(age: 43, multiplier: 7)}');
}

int calcYears({var age, var multiplier}) {
  return age * multiplier;
}
