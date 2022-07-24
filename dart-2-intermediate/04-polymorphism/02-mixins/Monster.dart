import './Feline.dart';
import './Dragon.dart';
import './Ghost.dart';

class Monster extends Feline with Dragon, Ghost  {

  bool glowInDark = true;

  @override
  void test() {
    print('Test called in Monster');
    super.test();
  }
}