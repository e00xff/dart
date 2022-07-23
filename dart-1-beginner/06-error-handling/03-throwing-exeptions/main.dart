void main(List<String> args) {
  try {
    var age;
    var dogYears = 8;

    if(dogYears != 7) throw new Exception('Dog years must be 7');

    if(age == null) throw new NullThrownError();

    print(age * dogYears);
  } on NullThrownError {
    print('The value was null!');
  } on NoSuchMethodError {
    print('Sorry no such method');
  } catch(e) {
    print('Unknown error ${e.toString()}');
  } finally  {
    print('Complete');
  }
}