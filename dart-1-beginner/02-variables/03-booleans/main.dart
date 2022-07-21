void main(List<String> args) {
  bool isOn = true;
  print('isOn = ${isOn}'); // // Error: Non-nullable variable 'isOn' must be assigned before it can be used.

  isOn = true;
  print('isOn = ${isOn}');

  isOn = false;
  print('isOn = ${isOn}');

  print('isOn = ${isOn.runtimeType}');
}