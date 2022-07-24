import 'Car.dart';

class Racecar extends Car {

  Racecar() {
    this.hasHorn = true;
    this.hasWheels = true; 
  }

  // void honk() => print('beep beep');

  void honk() {
    print('honk in racer');
    super.honk();
  }

}