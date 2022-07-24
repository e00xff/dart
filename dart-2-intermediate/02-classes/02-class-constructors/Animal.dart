class Animal {
  String _name = '';

  /*
  Animal() {
    print('constructed');
    _name = 'Sam';
  }
  */

  Animal(String name) {
    _name = name;
  }
  
  void sayHello() {
    if(_name.isEmpty) {
      print('Hello');
    } else {
      print('Hello ${_name} nice to meet you. ');
    }
  }
}