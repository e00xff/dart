import './Dog.dart';
void main(List<String> args) {

  Dog mura = new Dog(6, 'Mura');
  mura.ageInDogYears();

  print('${mura.name} is ${mura.ageInDogYears()} years old.');

}