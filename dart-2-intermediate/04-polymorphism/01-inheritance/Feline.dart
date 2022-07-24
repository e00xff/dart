import './Mamal.dart';

class Feline extends Mamal {
  bool hasClaws = true;

  void growl() => print('Grrrr');

  @override
  void test() {
    print('Testing in feline');
    super.test();
  }
} 