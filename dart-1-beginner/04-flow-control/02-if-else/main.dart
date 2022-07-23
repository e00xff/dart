void main(List<String> args) {
  int age = 134;

  if(age == 43) print("You are 43 years old");
  if(age != 43) print("You are not 43 years old");

  if(age < 18) {
    print('You are a minor');

    if(age < 13) print('You ar not even a teenager');
  }

  if(age > 67) {
    print('You are a Senior');

    if(age > 102) print('You are lucky to be alive');
  }

  if(age == 21) {
    print('This is your special year');
  } else {
    print('This is a just a normal year');
    if(age < 21) {
      print('You are a minor');
    }else {
      print('You are an adult');
    }
  }
}