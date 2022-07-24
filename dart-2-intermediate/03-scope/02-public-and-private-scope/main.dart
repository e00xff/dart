import './Animal.dart';
void main(List<String> args) {
  Animal cat = new Animal('levan', 16, 'Short hair');

  cat.breed = 'Mixed';
  // cat._display(' Hello');
  cat.sayHello();
  cat.saySomething('Hello');
}