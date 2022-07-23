void main(List<String> args) {

  try {
    var age;
    var dogYears = 7;

    print(age * dogYears); 
  } on NoSuchMethodError {
    print('Sorry thats not going to happen');
  } catch(e) {
    print('There was an error: ${e.toString()}');
  } finally {
    print('Complete');
  }

}