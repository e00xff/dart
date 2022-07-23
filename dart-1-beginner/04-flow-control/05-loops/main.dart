void main(List<String> args) {

  int value;
  int init = 1;
  int max = 5;


  // Do While loop
  print('--- do while loop ---');

  value = init;

  do{
    print('Value: ${value}');
    value++;
  } while(value <= max);


  


  // While loop
  print('--- while loop ---');

  value = init;

  while(value <= max) {
    print('Value: ${value}');
    value++;
  }


  
// infinite Do While loop
  print('--- infinite do while loop ---');

  value = init;

  do{
    print('Value: ${value}');
    value++;

    if(value == 3) {
      print('value = 3');
      continue;
    }

    if(value > 5) {
      print('value > 5');
      break ;
    }

  } while(true);

}