class Animal {

  String _name = '';
  int _age = 0;
  String breed = '';

  Animal(String name, int age, String breed) {
    this._name = name;
    _age = age;
    this.breed  = breed;
  }

  void sayHello() => print('Hello my name is ${_name} I am ${_age} years old, and I am a ${breed}');

  void _display(String message) => print('Message ${message}');
  void saySomething(String message) => this._display(message);

}