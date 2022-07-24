import './Animal.dart';

class Mamal extends Animal {
  bool hasHair = true;
  bool hasBackbone = true;
  bool isWarmBlooded = true;

  void walk() => print('Walking');

  void test() {
    print('Testing in mamal');
  }
}