import './MyClass.dart';
import './calculate.dart' as calculate;
void main(List<String> args) {
  // create an instance of the class
  MyClass mine = new MyClass();
  MyClass yours = new MyClass();
  mine.sayHello('Levan');
  yours.sayHello('John');

  // Not realy a class
  print('Result: ${calculate.sum(2, 5)}');
}