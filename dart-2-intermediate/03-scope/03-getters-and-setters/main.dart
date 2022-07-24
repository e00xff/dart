import './Animal.dart';
void main(List<String> args) {
  Animal dog = new Animal('Mura', 6);
  dog.name = 'jeka'; // setter
  print(dog.name); // getter

  print('Before setter ${dog.age}'); // getter
  dog.age = 4; // setter
  print('After setter ${dog.age}'); // getter
}